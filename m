Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF23CB4A34
	for <lists+linux-nvme@lfdr.de>; Tue, 17 Sep 2019 11:18:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XRENySATbS8boNjbN2CRtkvXdcrXdtkSvkVoCUzXVN8=; b=ajXbq5qw6Qiox4
	QlRcm6ZfqssOIcrugrBuh5oXsiyeQx96uis3LZ6wFc2BcuD1ZPCpidFBGFXsAkZoa/Wso0vhl+kNK
	oq3d+DKNHJ70TMfQU5hUKUfR7zuc7C1nOztm72asMui1VF4kM8tWF5ndlWlm55JhvVqAEexlWoiHo
	mG9aPdOocQ0c/pAKTgYQInZ3hAYUAVXsSFfemLjy50CPqThB6MmW/P2Z8DOcFhcTfTzEVBud3TM7f
	+/iwVpzXJ9y9olE6/oRd3BhGasZFoeaSn1L70jOBmvIitCLgt2gpjXQAXyODPzO30csd9KHDf7Yue
	lNmArAR/7N+vfxjeVMBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA9dB-0005rq-1d; Tue, 17 Sep 2019 09:18:41 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA9cp-0005oj-6P
 for linux-nvme@lists.infradead.org; Tue, 17 Sep 2019 09:18:21 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id F4177307D84D;
 Tue, 17 Sep 2019 09:18:17 +0000 (UTC)
Received: from ming.t460p (ovpn-8-25.pek2.redhat.com [10.72.8.25])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 1F7BB60A9F;
 Tue, 17 Sep 2019 09:18:11 +0000 (UTC)
Date: Tue, 17 Sep 2019 17:18:07 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Gabriel C <nix.or.die@gmail.com>
Subject: Re: nvme vs. hibernation ( again )
Message-ID: <20190917091806.GB15374@ming.t460p>
References: <CAEJqkggcnW98Sk3BEBCCZf57Uwd9rdqD5Da0tmuTaNfkJN5kVg@mail.gmail.com>
 <CACVXFVNiRX+K8toexRfykazVnpC1sNYj2UbUtnqNeqkqUfs8TA@mail.gmail.com>
 <CAEJqkgii81G8_=ddVb92TFAcsr5LCEOi08aBfQ2RAu2UPAYpwg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAEJqkgii81G8_=ddVb92TFAcsr5LCEOi08aBfQ2RAu2UPAYpwg@mail.gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Tue, 17 Sep 2019 09:18:18 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_021819_432740_75321D24 
X-CRM114-Status: GOOD (  22.43  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Ming Lei <tom.leiming@gmail.com>, LKML <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Sep 12, 2019 at 11:24:23AM +0200, Gabriel C wrote:
> Am Do., 12. Sept. 2019 um 02:51 Uhr schrieb Ming Lei <tom.leiming@gmail.com>:
> >
> > On Thu, Sep 12, 2019 at 12:27 AM Gabriel C <nix.or.die@gmail.com> wrote:
> > >
> > > Hi Christoph,
> > >
> > > I see this was already discussed in 2 threads:
> > >
> > >  https://lists.infradead.org/pipermail/linux-nvme/2019-April/023234.html
> > >  https://lkml.org/lkml/2019/5/24/668
> > >
> > > but in latest git the issue still exists.
> > >
> > > I hit that on each resume on my Acer Nitro 5 (AN515-43-R8BF) Laptop.
> > >
> > > .....
> > > Sep 11 16:16:30 nitro5 kernel: Freezing remaining freezable tasks ...
> > > (elapsed 0.000 seconds) done.
> > > Sep 11 16:16:30 nitro5 kernel: printk: Suspending console(s) (use
> > > no_console_suspend to debug)
> > > Sep 11 16:16:30 nitro5 kernel: WARNING: CPU: 0 PID: 882 at
> > > kernel/irq/chip.c:210 irq_startup+0xe6/0xf0
> > > Sep 11 16:16:30 nitro5 kernel: Modules linked in: af_packet bnep
> > > amdgpu ath10k_pci ath10k_core ath mac80211 joydev uvcvideo
> > > videobuf2_vmalloc videobuf2_memops edac_mce_amd videobuf2_v4l2
> > > amd_iommu_v2 kvm_amd gpu_sched btusb snd_hda_codec_realtek ttm btrtl
> > > btbcm btintel hid_multitouch ccp snd_hda_codec_generic nls_utf8
> > > bluetooth drm_kms_helper hid_generic videobuf2_common ledtrig_audio
> > > snd_hda_codec_hdmi nls_cp437 cfg80211 drm kvm snd_hda_intel vfat
> > > videodev fat agpgart efi_pstore r8169 snd_hda_codec ecdh_generic
> > > i2c_algo_bit realtek irqbypass pcspkr mc rfkill fb_sys_fops efivars
> > > syscopyarea snd_hda_core ecc k10temp wmi_bmof sysfillrect tpm_crb
> > > crc16 libphy i2c_piix4 libarc4 snd_hwdep hwmon sysimgblt tpm_tis
> > > tpm_tis_core evdev ac tpm battery mac_hid i2c_designware_platform
> > > pinctrl_amd i2c_designware_core rng_core acer_wireless button
> > > acpi_cpufreq ppdev sch_fq_codel fuse snd_pcm_oss snd_mixer_oss snd_pcm
> > > snd_seq_dummy snd_seq_oss snd_seq_midi_event snd_seq snd_seq_device
> > > snd_timer snd soundcore lp parport_pc
> > > Sep 11 16:16:30 nitro5 kernel:  parport xfs libcrc32c crc32c_generic
> > > crct10dif_pclmul crc32_pclmul crc32c_intel ghash_clmulni_intel ahci
> > > libahci libata xhci_pci xhci_hcd aesni_intel usbcore scsi_mod
> > > aes_x86_64 crypto_simd cryptd glue_helper serio_raw i2c_hid hid video
> > > i2c_core wmi dm_mirror dm_region_hash dm_log dm_mod unix sha1_ssse3
> > > sha1_generic hmac ipv6 nf_defrag_ipv6 autofs4
> > > Sep 11 16:16:30 nitro5 kernel: CPU: 0 PID: 882 Comm: kworker/u32:9 Not
> > > tainted 5.3.0-rc8-00007-g3120b9a6a3f7-dirty #2
> > > Sep 11 16:16:30 nitro5 kernel: Hardware name: Acer Nitro
> > > AN515-43/Octavia_PKS, BIOS V1.05 08/07/2019
> > > Sep 11 16:16:30 nitro5 kernel: Workqueue: events_unbound async_run_entry_fn
> > > Sep 11 16:16:30 nitro5 kernel: RIP: 0010:irq_startup+0xe6/0xf0
> > > Sep 11 16:16:30 nitro5 kernel: Code: e8 7f 3c 00 00 85 c0 0f 85 e3 09
> > > 00 00 4c 89 e7 31 d2 4c 89 ee e8 1a cf ff ff 48 89 ef e8 b2 fe ff ff
> > > 41 89 c4 e9 51 ff ff ff <0f> 0b eb b2 66 0f 1f 44 00 00 0f 1f 44 00 00
> > > 55 48 89 fd 53 48 8b
> > > Sep 11 16:16:30 nitro5 kernel: RSP: 0018:ffffbe9b00793c38 EFLAGS: 00010002
> > > Sep 11 16:16:30 nitro5 kernel: RAX: 0000000000000010 RBX:
> > > 0000000000000001 RCX: 0000000000000040
> > > Sep 11 16:16:30 nitro5 kernel: RDX: 0000000000000000 RSI:
> > > ffffffff9d1b8800 RDI: ffff9c9d9e136598
> > > Sep 11 16:16:30 nitro5 kernel: RBP: ffff9c9d981e5400 R08:
> > > 0000000000000000 R09: ffff9c9d9e8003f0
> > > Sep 11 16:16:30 nitro5 kernel: R10: 0000000000000000 R11:
> > > ffffffff9d057688 R12: 0000000000000001
> > > Sep 11 16:16:30 nitro5 kernel: R13: ffff9c9d9e136598 R14:
> > > 0000000000000000 R15: ffff9c9d9e346000
> > > Sep 11 16:16:30 nitro5 kernel: FS:  0000000000000000(0000)
> > > GS:ffff9c9da0800000(0000) knlGS:0000000000000000
> > > Sep 11 16:16:30 nitro5 kernel: CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > > Sep 11 16:16:30 nitro5 kernel: CR2: 00005633ad8d0060 CR3:
> > > 00000003db8d0000 CR4: 00000000003406f0
> > > Sep 11 16:16:30 nitro5 kernel: Call Trace:
> > > Sep 11 16:16:30 nitro5 kernel:  enable_irq+0x48/0x90
> > > Sep 11 16:16:30 nitro5 kernel:  nvme_poll_irqdisable+0x20c/0x280
> > > Sep 11 16:16:30 nitro5 kernel:  __nvme_disable_io_queues+0x19d/0x1d0
> > > Sep 11 16:16:30 nitro5 kernel:  ? nvme_del_queue_end+0x20/0x20
> > > Sep 11 16:16:30 nitro5 kernel:  nvme_dev_disable+0x15c/0x210
> > > Sep 11 16:16:30 nitro5 kernel:  nvme_suspend+0x40/0x130
> > > Sep 11 16:16:30 nitro5 kernel:  pci_pm_suspend+0x72/0x130
> > > Sep 11 16:16:30 nitro5 kernel:  ? pci_pm_freeze+0xb0/0xb0
> > > Sep 11 16:16:30 nitro5 kernel:  dpm_run_callback+0x29/0x120
> > > Sep 11 16:16:30 nitro5 kernel:  __device_suspend+0x1b2/0x400
> > > Sep 11 16:16:30 nitro5 kernel:  async_suspend+0x1b/0x90
> > > Sep 11 16:16:30 nitro5 kernel:  async_run_entry_fn+0x37/0xe0
> > > Sep 11 16:16:30 nitro5 kernel:  process_one_work+0x1d1/0x3a0
> > > Sep 11 16:16:30 nitro5 kernel:  worker_thread+0x4a/0x3d0
> > > Sep 11 16:16:30 nitro5 kernel:  kthread+0xf9/0x130
> > > Sep 11 16:16:30 nitro5 kernel:  ? process_one_work+0x3a0/0x3a0
> > > Sep 11 16:16:30 nitro5 kernel:  ? kthread_park+0x80/0x80
> > > Sep 11 16:16:30 nitro5 kernel:  ret_from_fork+0x22/0x40
> > > Sep 11 16:16:30 nitro5 kernel: ---[ end trace c598a86b44574730 ]---
> > >
> > > ...
> > >
> > > The patch from Dongli Zhang was rejected the time without any other fix
> > > or work on this issue I could find.
> > >
> > > Are there any plans to fix that or any code to test?
> >
> > I guess the following patchset may address it:
> >
> > https://lore.kernel.org/linux-block/20190812134312.16732-1-ming.lei@redhat.com/
> >
> 
> Thx Ming Lei.
> 
> Can you tell me on what branch/tree they are based on?

The patchset can be applied cleanly on for-5.4/block.

However, the warning can't be fixed, even though the issue and
the patchset is closely related.

The warning just means there isn't any online CPU in this managed IRQ's
affinity. Once we can guarantee that there aren't any in-flight requests
for dead hctx(no any online CPU in its affinity mask), the warning
can be removed.


thanks,
Ming

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
