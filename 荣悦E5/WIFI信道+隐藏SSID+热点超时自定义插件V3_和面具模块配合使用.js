//<script>
(async () => {
  const MODAL_NAME = 'wifi_channel_switch_modal';
  const CHANNEL_FILE = '/data/kano_ap_channel.cfg';
  const TIMEOUT_FILE = '/data/kano_softap_timeout';
  const HIDDEN_SSID_FILE = '/data/kano_is_hidden_ssid';
  const MODULE_FILE = '/data/adb/modules/apex-bind-replace/apx/com.android.wifi/javalib/service-wifi.jar';
  const MODULE_FILE1 = '/data/adb/modules/unlock_hotspot_limit/apx/com.android.wifi/javalib/service-wifi.jar';

  const getCurrentChannel = async () => {
    const res = await runShellWithRoot(`timeout 2s awk '{print}' ${CHANNEL_FILE}`);
    const value = (res?.content || '').trim();
    if (!value) return '36';
    return value;
  };

  const checkModuleInstalled = async () => {
    const res = await runShellWithRoot(`ls ${MODULE_FILE}`);
    const res1 = await runShellWithRoot(`ls ${MODULE_FILE1}`);
    return Boolean(res?.success && (res?.content || '').includes('service-wifi.jar')) || Boolean(res1?.success && (res1?.content || '').includes('service-wifi.jar'));
  };

  const getCurrentTimeout = async () => {
    const fileRes = await runShellWithRoot(`ls ${TIMEOUT_FILE}`);
    if (!fileRes?.success) {
      return { mode: 'always', rawValue: '', minutes: null, label: '常开（文件不存在）' };
    }

    const valueRes = await runShellWithRoot(`timeout 2s awk '{print}' ${TIMEOUT_FILE}`);
    const rawValue = (valueRes?.content || '').trim();
    if (!rawValue || rawValue === '-1') {
      return { mode: 'always', rawValue: rawValue || '-1', minutes: null, label: '常开' };
    }

    const timeoutMs = Number(rawValue);
    if (!Number.isFinite(timeoutMs) || timeoutMs <= 0) {
      return { mode: 'unknown', rawValue, minutes: null, label: `异常值：${rawValue}` };
    }

    const minutes = timeoutMs / 60000;
    const minutesLabel = Number.isInteger(minutes) ? `${minutes}` : minutes.toFixed(2);
    return {
      mode: 'timeout',
      rawValue,
      minutes,
      label: `${minutesLabel} 分钟`,
    };
  };

  const getCurrentHiddenSsid = async () => {
    const fileRes = await runShellWithRoot(`ls ${HIDDEN_SSID_FILE}`);
    if (!fileRes?.success) {
      return { enabled: false, rawValue: '', label: '关闭（文件不存在）' };
    }

    const valueRes = await runShellWithRoot(`timeout 2s awk '{print}' ${HIDDEN_SSID_FILE}`);
    const rawValue = (valueRes?.content || '').trim();
    const enabled = rawValue === '1';
    return {
      enabled,
      rawValue,
      label: enabled ? '开启' : `关闭${rawValue ? `（当前值：${rawValue}）` : ''}`,
    };
  };

  const setTimeoutButtonState = (timeoutInfo) => {
    const btn30 = document.querySelector('#wifi_timeout_btn_30');
    const btnAlways = document.querySelector('#wifi_timeout_btn_always');
    if (!btn30 || !btnAlways) return;

    btn30.style.background = timeoutInfo?.mode === 'timeout' && Number(timeoutInfo?.minutes) === 30
      ? 'var(--dark-btn-color-active)'
      : '';
    btnAlways.style.background = timeoutInfo?.mode === 'always'
      ? 'var(--dark-btn-color-active)'
      : '';
  };

  const setHiddenSsidButtonState = (hiddenInfo) => {
    const btnOn = document.querySelector('#wifi_hidden_ssid_btn_on');
    const btnOff = document.querySelector('#wifi_hidden_ssid_btn_off');
    if (!btnOn || !btnOff) return;

    btnOn.style.background = hiddenInfo?.enabled ? 'var(--dark-btn-color-active)' : '';
    btnOff.style.background = hiddenInfo?.enabled ? '' : 'var(--dark-btn-color-active)';
  };

  const refreshModalState = async () => {
    const channelEl = document.querySelector('#wifi_channel_current');
    const timeoutEl = document.querySelector('#wifi_timeout_current');
    const hiddenEl = document.querySelector('#wifi_hidden_ssid_current');
    const moduleEl = document.querySelector('#wifi_channel_module_status');
    const tipEl = document.querySelector('#wifi_channel_module_tip');
    const btn36 = document.querySelector('#wifi_channel_btn_36');
    const btn149 = document.querySelector('#wifi_channel_btn_149');
    const timeoutBtn30 = document.querySelector('#wifi_timeout_btn_30');
    const timeoutBtnAlways = document.querySelector('#wifi_timeout_btn_always');
    const timeoutApplyBtn = document.querySelector('#wifi_timeout_apply_btn');
    const hiddenBtnOn = document.querySelector('#wifi_hidden_ssid_btn_on');
    const hiddenBtnOff = document.querySelector('#wifi_hidden_ssid_btn_off');

    if (!channelEl || !timeoutEl || !hiddenEl || !moduleEl || !tipEl || !btn36 || !btn149 || !timeoutBtn30 || !timeoutBtnAlways || !timeoutApplyBtn || !hiddenBtnOn || !hiddenBtnOff) return;

    channelEl.textContent = '读取中...';
    timeoutEl.textContent = '读取中...';
    hiddenEl.textContent = '读取中...';
    moduleEl.textContent = '检测中...';
    tipEl.style.display = 'none';
    btn36.disabled = true;
    btn149.disabled = true;
    timeoutBtn30.disabled = true;
    timeoutBtnAlways.disabled = true;
    timeoutApplyBtn.disabled = true;
    hiddenBtnOn.disabled = true;
    hiddenBtnOff.disabled = true;

    const [channel, timeoutInfo, hiddenInfo, installed] = await Promise.all([
      getCurrentChannel(),
      getCurrentTimeout(),
      getCurrentHiddenSsid(),
      checkModuleInstalled(),
    ]);

    channelEl.textContent = channel;
    timeoutEl.textContent = timeoutInfo.label;
    hiddenEl.textContent = hiddenInfo.label;
    moduleEl.textContent = installed ? '已安装支持模块' : '未安装支持模块';
    moduleEl.style.color = installed ? 'var(--dark-btn-color-active)' : '#ff6b6b';
    tipEl.style.display = installed ? 'none' : 'block';
    btn36.disabled = !installed;
    btn149.disabled = !installed;
    timeoutBtn30.disabled = false;
    timeoutBtnAlways.disabled = false;
    timeoutApplyBtn.disabled = false;
    hiddenBtnOn.disabled = false;
    hiddenBtnOff.disabled = false;
    btn36.style.background = channel === '36' ? 'var(--dark-btn-color-active)' : '';
    btn149.style.background = channel === '149' ? 'var(--dark-btn-color-active)' : '';
    setTimeoutButtonState(timeoutInfo);
    setHiddenSsidButtonState(hiddenInfo);
  };

  const switchChannel = async (channel) => {
    const btn36 = document.querySelector('#wifi_channel_btn_36');
    const btn149 = document.querySelector('#wifi_channel_btn_149');
    if (!btn36 || !btn149) return;

    btn36.disabled = true;
    btn149.disabled = true;
    createToast(`正在切换到 5G 信道 ${channel}...`, 'pink');

    const writeRes = await runShellWithRoot(
      `sh -c 'echo "${channel}" > ${CHANNEL_FILE} && chmod 777 ${CHANNEL_FILE}'`
    );
    if (!writeRes?.success) {
      createToast('写入信道失败', 'red');
      await refreshModalState();
      return;
    }

    const verifyRes = await runShellWithRoot(`timeout 2s awk '{print}' ${CHANNEL_FILE}`);
    const finalChannel = (verifyRes?.content || '').trim() || '36';
    if (finalChannel !== String(channel)) {
      createToast(`校验失败，当前读取为 ${finalChannel}`, 'red', 5000);
      await refreshModalState();
      return;
    }

    createToast(`已切换到 5G 信道 ${finalChannel} 重启生效`, 'pink');
    await refreshModalState();
  };

  const saveHotspotTimeout = async (timeoutMs, successText) => {
    const timeoutBtn30 = document.querySelector('#wifi_timeout_btn_30');
    const timeoutBtnAlways = document.querySelector('#wifi_timeout_btn_always');
    const timeoutApplyBtn = document.querySelector('#wifi_timeout_apply_btn');
    if (!timeoutBtn30 || !timeoutBtnAlways || !timeoutApplyBtn) return;

    timeoutBtn30.disabled = true;
    timeoutBtnAlways.disabled = true;
    timeoutApplyBtn.disabled = true;

    const writeRes = await runShellWithRoot(
      `sh -c 'echo ${timeoutMs} > ${TIMEOUT_FILE} && chmod 777 ${TIMEOUT_FILE}'`
    );
    if (!writeRes?.success) {
      createToast('写入热点超时配置失败', 'red');
      await refreshModalState();
      return;
    }

    const timeoutInfo = await getCurrentTimeout();
    if (String(timeoutInfo.rawValue || '') !== String(timeoutMs)) {
      createToast(`校验失败，当前读取为 ${timeoutInfo.rawValue || '文件不存在'}`, 'red', 5000);
      await refreshModalState();
      return;
    }

    createToast(successText, 'green');
    await refreshModalState();
  };

  const saveHiddenSsid = async (enabled) => {
    const hiddenBtnOn = document.querySelector('#wifi_hidden_ssid_btn_on');
    const hiddenBtnOff = document.querySelector('#wifi_hidden_ssid_btn_off');
    if (!hiddenBtnOn || !hiddenBtnOff) return;

    hiddenBtnOn.disabled = true;
    hiddenBtnOff.disabled = true;

    const targetValue = enabled ? '1' : '0';
    createToast(`正在${enabled ? '开启' : '关闭'}隐藏SSID...`, 'pink');

    const writeRes = await runShellWithRoot(
      `sh -c 'echo ${targetValue} > ${HIDDEN_SSID_FILE} && chmod 777 ${HIDDEN_SSID_FILE}'`
    );
    if (!writeRes?.success) {
      createToast('写入隐藏SSID配置失败', 'red');
      await refreshModalState();
      return;
    }

    const hiddenInfo = await getCurrentHiddenSsid();
    if (String(hiddenInfo.rawValue || '') !== targetValue) {
      createToast(`校验失败，当前读取为 ${hiddenInfo.rawValue || '文件不存在'}`, 'red', 5000);
      await refreshModalState();
      return;
    }

    createToast(`隐藏SSID已${enabled ? '开启' : '关闭'} 重启生效`, 'green');
    await refreshModalState();
  };

  const setHotspotAlwaysOn = async () => {
    createToast('正在设置热点常开...', 'pink');
    await saveHotspotTimeout(-1, '热点超时已设置为常开');
  };

  const setHotspotTimeoutMinutes = async (minutes) => {
    const parsedMinutes = Number(minutes);
    if (!Number.isInteger(parsedMinutes) || parsedMinutes <= 0) {
      createToast('请输入大于 0 的整数分钟数', 'red');
      return;
    }

    const timeoutMs = parsedMinutes * 60 * 1000;
    createToast(`正在设置热点超时为 ${parsedMinutes} 分钟...`, 'pink');
    await saveHotspotTimeout(timeoutMs, `热点超时已设置为 ${parsedMinutes} 分钟`);
  };

  const openModal = async () => {
    document.querySelector(`#${MODAL_NAME}`)?.remove();

    const { id, el } = createModal({
      name: MODAL_NAME,
      title: 'WiFi 热点自定义',
      maxWidth: '420px',
      contentStyle:"max-height:500px",
      showConfirm: false,
      onClose: () => true,
      content: `
        <div style="display:flex;flex-direction:column;gap:12px;">
          <div style="padding:10px;border-radius:10px;background:rgba(255,255,255,.04);">
            <div class="title" style="font-size:.78rem;margin-bottom:6px;">当前状态</div>
            <div style="font-size:.72rem;line-height:1.8;">
              <div>当前 5G 信道：<span id="wifi_channel_current">--</span></div>
              <div>模块状态：<span id="wifi_channel_module_status">--</span></div>
              <div>热点超时：<span id="wifi_timeout_current">--</span></div>
              <div>隐藏SSID：<span id="wifi_hidden_ssid_current">--</span></div>
            </div>
            <div id="wifi_channel_module_tip" style="display:none;margin-top:8px;font-size:.68rem;color:#ff6b6b;">
              未检测到锁信道+解除热点限制的 Magisk 模块，请先安装对应模块后再使用。
            </div>
          </div>
          <div>
            <div class="title" style="font-size:.78rem;margin-bottom:8px;">切换信道</div>
            <div style="display:flex;gap:10px;flex-wrap:wrap;">
              <button id="wifi_channel_btn_36">切换到 5G 信道 36</button>
              <button id="wifi_channel_btn_149">切换到 5G 信道 149</button>
            </div>
          </div>
          <div>
            <div class="title" style="font-size:.78rem;margin-bottom:8px;">热点超时</div>
            <div style="font-size:.68rem;line-height:1.7;opacity:.86;margin-bottom:8px;">
              单位为分钟，写入 <code>-1</code> 或文件不存在都代表热点常开。
            </div>
            <div style="display:flex;gap:10px;flex-wrap:wrap;align-items:center;">
              <input id="wifi_timeout_minutes_input" type="number" min="1" step="1" placeholder="输入分钟数，例如 30" style="flex:1;min-width:160px;padding:8px;border-radius:8px;border:1px solid rgba(255,255,255,.15);background:rgba(255,255,255,.04);color:inherit;">
              <button id="wifi_timeout_apply_btn">保存分钟数</button>
            </div>
            <div style="display:flex;gap:10px;flex-wrap:wrap;margin-top:10px;">
              <button id="wifi_timeout_btn_30">设置为 30 分钟</button>
              <button id="wifi_timeout_btn_always">设置为常开</button>
            </div>
          </div>
          <div>
            <div class="title" style="font-size:.78rem;margin-bottom:8px;">隐藏SSID</div>
            <div style="font-size:.68rem;line-height:1.7;opacity:.86;margin-bottom:8px;">
              写入 <code>1</code> 表示隐藏热点，文件不存在或不是 <code>1</code> 都表示不隐藏。
            </div>
            <div style="display:flex;gap:10px;flex-wrap:wrap;">
              <button id="wifi_hidden_ssid_btn_on">开启隐藏SSID</button>
              <button id="wifi_hidden_ssid_btn_off">关闭隐藏SSID</button>
            </div>
          </div>
        </div>
      `,
    });

    const btn36 = el.querySelector('#wifi_channel_btn_36');
    const btn149 = el.querySelector('#wifi_channel_btn_149');
    const timeoutMinutesInput = el.querySelector('#wifi_timeout_minutes_input');
    const timeoutApplyBtn = el.querySelector('#wifi_timeout_apply_btn');
    const timeoutBtn30 = el.querySelector('#wifi_timeout_btn_30');
    const timeoutBtnAlways = el.querySelector('#wifi_timeout_btn_always');
    const hiddenBtnOn = el.querySelector('#wifi_hidden_ssid_btn_on');
    const hiddenBtnOff = el.querySelector('#wifi_hidden_ssid_btn_off');

    btn36.onclick = async () => {
      await switchChannel(36);
    };
    btn149.onclick = async () => {
      await switchChannel(149);
    };
    timeoutApplyBtn.onclick = async () => {
      await setHotspotTimeoutMinutes(timeoutMinutesInput.value);
    };
    timeoutBtn30.onclick = async () => {
      timeoutMinutesInput.value = '30';
      await setHotspotTimeoutMinutes(30);
    };
    timeoutBtnAlways.onclick = async () => {
      await setHotspotAlwaysOn();
    };
    hiddenBtnOn.onclick = async () => {
      await saveHiddenSsid(true);
    };
    hiddenBtnOff.onclick = async () => {
      await saveHiddenSsid(false);
    };
    timeoutMinutesInput.onkeydown = async (e) => {
      if (e.key === 'Enter') {
        e.preventDefault();
        await setHotspotTimeoutMinutes(timeoutMinutesInput.value);
      }
    };

    showModal(id);
    await refreshModalState();
  };

  const mainBtn = document.createElement('button');
  mainBtn.textContent = 'WiFi热点自定义';
  mainBtn.onclick = async () => {
    if (!(await checkAdvancedFunc())) {
      createToast('请先启用高级功能', 'pink');
      return;
    }
    await openModal();
  };

  document.querySelector('.actions-buttons')?.appendChild(mainBtn);
})();
//</script>
