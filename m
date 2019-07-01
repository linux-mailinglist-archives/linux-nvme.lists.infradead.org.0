Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4559C1FCEC
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 03:24:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7ZZc+t59VAf/HIJR3X8PpJQqEELas5aQ+a5LKbQpLkI=; b=dAdSN0wxGkz/06aBnBhf1FJr/o
	12lClI7B25cDyf14LzbH5Hjyv95zFpyBw2TPLKiH8W/MzNg/p7VQ/4oz51APfbTeEkfnbljQQ36DR
	qCmUfVZ2HzyhIXSiHyNuSLus2oXQk5i4GnJznD5xBjL/U5BexE0xQuHzbEdbmc54Cl5FL550vKnb5
	AReDfFYpUBHSEXVO4f7JsONh/V3pC57wGVmzbJzc6sUVG0c64Mn+Q86tUq3kfZaFBAqvCmUlxU3h0
	nwcfihAWOBFLC8GguD8bBs3CtvvrpLanqsNC1mH0x1c9WTBnsYz5Shpwfeu4bQTypRJ3niC2lPMp7
	vC0rcMrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR57p-0002CG-4G; Thu, 16 May 2019 01:24:01 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR57k-0002Bv-Ah
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 01:23:57 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 May 2019 18:23:54 -0700
Received: from unknown (HELO [10.232.112.156]) ([10.232.112.156])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 15 May 2019 18:23:54 -0700
To: Keith Busch <keith.busch@intel.com>
From: "Heitke, Kenneth" <kenneth.heitke@intel.com>
Subject: Issue with namespace delete
Message-ID: <f215cfd2-c0ce-34ff-bc8b-4a577a73372e@intel.com>
Date: Wed, 15 May 2019 19:23:53 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_182356_391109_00F629B5 
X-CRM114-Status: GOOD (  12.97  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

I have been doing some namespace testing with Ubuntu 18.04 (kernel 
4.15.0-43-generic). I'm running into an issue with namespace deletes 
where the driver seems to hang.

[  363.484013]  synchronize_srcu+0x57/0xdc
[  363.484016]  nvme_ns_remove+0xcc/0x180 [nvme_core]
[  363.484018]  nvme_remove_invalid_namespaces+0xb1/0xe0 [nvme_core]
[  363.484020]  nvme_user_cmd+0x282/0x370 [nvme_core]
[  363.484022]  nvme_ioctl+0xd0/0x1d0 [nvme_core]
[  363.484024]  blkdev_ioctl+0x3b8/0x980
[  363.484025]  block_ioctl+0x3d/0x50
[  363.484027]  do_vfs_ioctl+0xa8/0x620
[  363.484028]  ? ptrace_notify+0x5b/0x90
[  363.484030]  ? syscall_trace_enter+0x7b/0x2c0
[  363.484031]  SyS_ioctl+0x7a/0x90
[  363.484032]  do_syscall_64+0x73/0x130
[  363.484033]  entry_SYSCALL_64_after_hwframe+0x3d/0xa2

I don't understand RCUs very well but I found the following in the 
documentation

"Note that it is illegal to call synchronize_srcu from the corresponding 
SRCU read-side critical section; doing so will result in deadlock."

I noticed in the driver that when multi-path is enabled, the context for 
ioctl calls would be in a read-side critical section 
(nvme_get_ns_from_disk) and I believe that the synchronize_srcu() call 
is made in the same context.

If I disable NVME_MULTIPATH, I don't see any issues when I try to delete 
a namespace.

I re-enabled multi-path and enabled DEBUG_LOCK_ALLOC. I used the 
following patch to check if the lock is held and then only call 
synchronize if the lock is not held.
[I am not sure I trust this because lock_held returns true by default]

@@ -3006,7 +3008,11 @@ static void nvme_ns_remove(struct nvme_ns *ns)
         list_del_init(&ns->list);
         up_write(&ns->ctrl->namespaces_rwsem);

-       synchronize_srcu(&ns->head->srcu);
+       WARN_ON(srcu_read_lock_held(&ns->head->srcu));
+
+       if (!srcu_read_lock_held(&ns->head->srcu))
+               synchronize_srcu(&ns->head->srcu);

I do get the warning and the namespace delete is successful.

[  136.316398] WARNING: CPU: 1 PID: 2201 at 
drivers/nvme/host/core.c:3013 nvme_ns_remove+0xf8/0x250 [nvme_core]
[  136.316489] Call Trace:
[  136.316494]  nvme_remove_invalid_namespaces+0xce/0x100 [nvme_core]
[  136.316498]  nvme_user_cmd+0x292/0x3a0 [nvme_core]
[  136.316507]  nvme_ioctl+0x123/0x220 [nvme_core]


Is there a possible issue here or am I off in the weeds?

Btw, I also see this issue with the 4.18 and 4.20 kernels

Thanks!

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
