Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC5BA4BF19
	for <lists+linux-nvme@lfdr.de>; Wed, 19 Jun 2019 18:56:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lrjxZfgUKG0BoJYYpAcOgo9BgDftqXPieMdBavud1MQ=; b=OFsvNuHyn1HViLNzAARc8GkXO
	xdNs2BV22W22+OAHSiRUFQ1G+Pxx1g2rV2qwMjmLCSSKJ7phNh/NL2Oh+XFzJgNK9zsbf3Zm4LVVL
	ZRo+mpImjs4Sm61b3AkGVlJw9U4nOiem0MoFoPiVjlqkj23wEWLciH6vIsWf4mUWB/ojCo1WHsWmH
	S6cHyY8Tcazi97U7VhH4tbXHBc7rqoa7fWZC+Px3eMAaeShoFqHBQmmAgbrOBvI+2nEX5NFBrYQo6
	poIMNJBvagDaMJDOVTktzkcfpi/EZUHIMVvGHGuPP8VVfAeJXYeQ3HpPd4a9/QyQDAcvVcOVy+4nt
	ZR+YNQRkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hddt6-0004i4-Vj; Wed, 19 Jun 2019 16:56:44 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hddsy-0004h8-Hk
 for linux-nvme@lists.infradead.org; Wed, 19 Jun 2019 16:56:40 +0000
Received: by mail-oi1-f193.google.com with SMTP id g7so11113086oia.8
 for <linux-nvme@lists.infradead.org>; Wed, 19 Jun 2019 09:56:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ks+vzeag/Wb9uPEUqS7pAT2aTCGjsVp5Tk5xrL2ABvU=;
 b=gjQnOK4TwhXs+3wG9mRC2CHKs4HJH4YUnhA9vdchGwOEOpzmeS2ij+lGSqJQXGeWpH
 eNP+DjwuXDKUMPaJFppES8Bb+Bzawk4MLhUdUirisSmG+10EYKX0kuPr0ij+NEwhKVE2
 Zw4KWqzEm2wCq/yky05gycOwSU/bL9EwjRrw3yex8NzEfSoHJN+XrWvzO3/veCqywYTR
 28qWnYVqCKYyW1x5mSMzmvImHOuw6CB1ZnAyZRwXGdI8YpvNAT5KhZx5aHjGSqkBTJvH
 C5AudCPsqxM9MZgBuk9W3Z4f0PQtXD1YgpnNvUl1HHZa9uTC0LUeWOi7uFaqASCzgCKk
 nwBg==
X-Gm-Message-State: APjAAAVSv+JL5DRRy9/Hp4qexFZvPQndyjpb0DEDDXqpgfMkfjiHKjWq
 kJ3CdJYXbGlalXACIIippg4YKxAb
X-Google-Smtp-Source: APXvYqz49XTsHUHirxST8sTsK9CiUi5/veS7d+TwbXETOgKVmt5I11917WgZCeDta28NtICv7+vn4w==
X-Received: by 2002:aca:338a:: with SMTP id z132mr3124610oiz.54.1560963395018; 
 Wed, 19 Jun 2019 09:56:35 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id 103sm6365362otu.33.2019.06.19.09.56.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 09:56:34 -0700 (PDT)
Subject: Re: [PATCH 2/2] nvme: flush scan_work when resetting controller
To: Hannes Reinecke <hare@suse.com>, Hannes Reinecke <hare@suse.de>,
 Christoph Hellwig <hch@lst.de>
References: <20190618101025.78840-1-hare@suse.de>
 <20190618101025.78840-3-hare@suse.de>
 <36c093c6-9fea-aa2f-affe-70957e0c5b1b@grimberg.me>
 <681a1c11-7d11-6e28-bc64-b14bef22c144@suse.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <fe550375-fc5d-ff19-c303-6671b8713df6@grimberg.me>
Date: Wed, 19 Jun 2019 09:56:32 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <681a1c11-7d11-6e28-bc64-b14bef22c144@suse.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_095638_739534_1A5DBDAB 
X-CRM114-Status: GOOD (  31.97  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Keith Busch <keith.busch@intel.com>, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>>> When resetting the controller there is no point whatsoever to
>>> have a scan run in parallel;
>>
>> There is also no point of trying to prevent it.
>>
> Oh, I don't mind having a scan running in parallel once reset is
> underway; that will be properly short-circuited anyway.
> What I object to is having scanning and resetting _starting_ at the same
> time, as then we incur all sorts of race conditions.

But your patch does not inherently protect against it, these state
conditions sprinkled can easily race the reset.

Note that I do agree with patch #1, but I don't understand how patch
#2 is fixing the problem other than narrowing the window at best.

> 
> Like this one :-)
> 
>>> we cannot access the controller and
>>> we cannot tell which devices are present and which not.
>>> Additionally we'll run a scan after reset anyway.
>>> So flush existing scans before reconnecting, ensuring to
>>> short-circuit the scan workqueue function if the controller state
>>> isn't live to avoid lockups.
>>
>> What is this fixing? can we get a detailed description?
>>
>> These ctrl->state conditions sprayed around that are not barriered
>> by anything do not prevent any scan to run in parallel with resets.
>>
> The 'ctrl->state' conditions are required to avoid I/O to be stalled
> during reset.

Not sure what you mean by stall, are you referring to the case that
it takes a long time to reconnect?

The solution is to make sure we drain the inflight I/O, not half-way
trying to prevent them from happening.

> Problem here is that I/O will be held during reset, and
> resubmitted once reset is finished.
> 
> The transport drivers work around this problem to terminate any I/O
> prior to resetting the controller,

Its not a work around.

> but this will only cover I/O which
> had been pending _before_ reset was called.
> Any I/O being started after that will still be held, and we would
> live-lock trying to flush the scan thread.

But resets do not flush the scan thread (before you restored it).

> So essentially we guard any I/O with the state check, and short circuit
> it if we find ourselves in reset.

As I mentioned, patch #1 is fine. Please explain what patch #2 is
exactly fixing.

> There is no need to protect the state check, as we will be aborting I/O
> when a state change to 'RESETTING' happens, and the update should be
> visible to all threads after that.

I think this assumption is incorrect. Nothing guarantees when/who will
have visibility to the state change.

> If you want I can separate this into two patches, one with flushing the
> scan function and one with the state check guards, and detail out the
> reasoning here.

No need to split, if its needed, it needs to be in a single patch.
But again, I want to understand after patch #1 is applied, what are the
symptoms and why patch #2 is solving them.

>> Also, do note that resets will unquiesce the admin queue right away
>> and not when the reset completes (rdma, tcp, fc). The only exception
>> is pci that will unquiesce as soon as the reset fails.
>>
>> So can you please clarify the problem?
>>
> Sure. During failover testing NetApp had been seeing several crashes like:
> 
> [67088.344034] WARNING: CPU: 4 PID: 25020 at
> ../lib/percpu-refcount.c:334 percpu_ref_kill_and_confirm+0x7a/0xa0
> [67088.344035] Modules linked in: nfsv3 nfs_acl rpcsec_gss_krb5
> auth_rpcgss nfsv4 dns_resolver nfs lockd grace sunrpc fscache af_packet
> iscsi_ibft iscsi_boot_sysfs xfs libcrc32c mgag200 ttm drm_kms_helper drm
> drm_panel_orientation_quirks iTCO_wdt syscopyarea iTCO_vendor_support
> sysfillrect igb sysimgblt fb_sys_fops be2net ptp pps_core i2c_algo_bit
> dca intel_rapl sb_edac x86_pkg_temp_thermal intel_powerclamp ipmi_ssif
> coretemp kvm_intel kvm irqbypass crc32_pclmul ghash_clmulni_intel pcbc
> aesni_intel aes_x86_64 crypto_simd glue_helper lpc_ich ipmi_si cryptd
> button mfd_core i2c_i801 pcspkr ipmi_devintf ipmi_msghandler ac shpchp
> btrfs xor raid6_pq sd_mod lpfc isci(X) ahci libsas nvmet_fc libahci
> nvmet ehci_pci scsi_transport_sas ehci_hcd crc32c_intel configfs libata
> usbcore nvme_fc nvme_fabrics nvme_core
> [67088.344079]  scsi_transport_fc sg scsi_mod autofs4
> [67088.344082] Supported: No, Unreleased kernel
> [67088.344085] CPU: 4 PID: 25020 Comm: kworker/u49:35 Tainted: G
>             4.12.14-2.g1a155c2-default #1 SLE15 (unreleased)
> [67088.344085] Hardware name: FUJITSU PRIMERGY RX200 S7/D3032-A1, BIOS
> V4.6.5.1 R1.8.0 for D3032-A1x 05/25/2012
> [67088.344092] Workqueue: nvme-wq nvme_scan_work [nvme_core]
> [67088.344094] task: ffff90a5dfa6c180 task.stack: ffff9e138d3d8000
> [67088.344096] RIP: 0010:percpu_ref_kill_and_confirm+0x7a/0xa0
> [67088.344097] RSP: 0018:ffff9e138d3dbc00 EFLAGS: 00010086
> [67088.344099] RAX: 0000000000000055 RBX: ffff90a60d1f3ac0 RCX:
> ffffffff9c066e08
> [67088.344100] RDX: 0000000000000001 RSI: 0000000000000082 RDI:
> 0000000000000093
> [67088.344100] RBP: 0000000000000246 R08: 0000000000035601 R09:
> ffffffff9c83a8e0
> [67088.344101] R10: ffff9e138633be98 R11: 0000000000000000 R12:
> 0000000000000000
> [67088.344102] R13: ffff90a61e813100 R14: 0000000000000009 R15:
> 0000000000000200
> [67088.344103] FS:  0000000000000000(0000) GS:ffff90a61fb00000(0000)
> knlGS:0000000000000000
> [67088.344104] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [67088.344105] CR2: 00007fc607bb2860 CR3: 000000041700a004 CR4:
> 00000000000606e0
> [67088.344106] Call Trace:
> [67088.344112]  blk_freeze_queue_start+0x2a/0x40
> [67088.344114]  blk_freeze_queue+0xe/0x40
> [67088.344118]  nvme_update_disk_info+0x36/0x260 [nvme_core]
> [67088.344122]  __nvme_revalidate_disk+0xca/0xf0 [nvme_core]
> [67088.344125]  nvme_revalidate_disk+0xa6/0x120 [nvme_core]
> [67088.344127]  ? blk_mq_get_tag+0xa3/0x220
> [67088.344130]  revalidate_disk+0x23/0xc0
> [67088.344133]  nvme_validate_ns+0x43/0x830 [nvme_core]
> [67088.344137]  ? wake_up_q+0x70/0x70
> [67088.344139]  ? blk_mq_free_request+0x12a/0x160
> [67088.344142]  ? __nvme_submit_sync_cmd+0x73/0xe0 [nvme_core]
> [67088.344145]  nvme_scan_work+0x2b3/0x350 [nvme_core]
> [67088.344149]  process_one_work+0x1da/0x400
> [67088.344150]  worker_thread+0x2b/0x3f0
> [67088.344152]  ? process_one_work+0x400/0x400
> 
> The underlying reason is an imbalance in nvme namespace refcouting:
> nvme_ns_remove() will teardown the queue first, before removing it from
> the list of namespaces:
> 
> static void nvme_ns_remove(struct nvme_ns *ns)
> {
> 	if (test_and_set_bit(NVME_NS_REMOVING, &ns->flags))
> 		return;
> 
> 	nvme_fault_inject_fini(ns);
> 	if (ns->disk && ns->disk->flags & GENHD_FL_UP) {
> 		del_gendisk(ns->disk);
> 		blk_cleanup_queue(ns->queue);
> 		if (blk_get_integrity(ns->disk))
> 			blk_integrity_unregister(ns->disk);
> 	}
> 
> 	mutex_lock(&ns->ctrl->subsys->lock);
> 	list_del_rcu(&ns->siblings);
> 	nvme_mpath_clear_current_path(ns);
> 	mutex_unlock(&ns->ctrl->subsys->lock);
> 
> 	down_write(&ns->ctrl->namespaces_rwsem);
> 	list_del_init(&ns->list);
> 	up_write(&ns->ctrl->namespaces_rwsem);
> 
> 
> 	synchronize_srcu(&ns->head->srcu);
> 	nvme_mpath_check_last_path(ns);
> 	nvme_put_ns(ns);
> }
> 
> when scanning is active during reset all namespaces are found to be
> unresponsive, and will be consequently removed:
> 
> static void nvme_validate_ns(struct nvme_ctrl *ctrl, unsigned nsid)
> {
> 	struct nvme_ns *ns;
> 
> 	ns = nvme_find_get_ns(ctrl, nsid);
> 	if (ns) {
> 		if (ns->disk && revalidate_disk(ns->disk))
> 			nvme_ns_remove(ns);
> 		nvme_put_ns(ns);
> 	} else
> 		nvme_alloc_ns(ctrl, nsid);
> }
> 

Which is what patch #1 is for right?

> However, as the controller is resetting it will call
> nvme_stop_queues() at the start of the reset, and nvme_start_queues()
> once reset is complete.
> 
> Both iterate the namespace list like
> 
> void nvme_stop_queues(struct nvme_ctrl *ctrl)
> {
> 	struct nvme_ns *ns;
> 
> 	down_read(&ctrl->namespaces_rwsem);
> 	list_for_each_entry(ns, &ctrl->namespaces, list)
> 		blk_mq_quiesce_queue(ns->queue);
> 	up_read(&ctrl->namespaces_rwsem);
> }
> 
> but this will only synchronize with the very last step of nvme_ns_remove().
> At that time blk_cleanup_queue() already had been called, and
> consequently we crash in 'blk_mq_quiesce_queue()' (or
> 'blk_mq_unquiesce_queue()', depending on the timing).

I sent a patch that moves the rcu sync.
Please see:
[PATCH] nvme: fix possible io failures when removing multipathed ns

We can have an incremental patch that moves the ns removal from
ctrl->namespaces also before.

> 
> This imbalance in nvme_ns_remove() is one issue which Ming Lei tried to
> fix up with his patchset 'blk-mq: fix races related with freezing queue'.
> However, he dropped the final patch
> "nvme: hold request queue's refcount in ns's whole lifetime"
> on request from hch, as he felt that blk_cleanup_queue() was unsafe in
> general, and should need to include the final put for the request queue
> itself.
> Sadly, this was precisely the patch for fixing this issue :-(
> 
> So instead of waiting for the big rewrite to happen I tried to approach
> things from the other end, namely stopping the race to happen in the
> first place.
> 
> And with these two patches the crashes are gone, so I thought to share
> it here if there were interest.

There is interest in fixing the crash, no doubt. But I just want to
understand if this is the correct fix.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
