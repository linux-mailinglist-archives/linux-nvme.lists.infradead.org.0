Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79597771A0
	for <lists+linux-nvme@lfdr.de>; Fri, 26 Jul 2019 20:51:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9DTihFYPc0JmplVb7rm1+rasGfm07IYBygNW1LTA/HQ=; b=O1ItWx2Uipy7eW
	9nr56XyUQSM+5ECFysMD2lfQPSkgOqlV4F+M23zphKWUaIDP1inPPbkBOHk3WDjqVTVVURLW8Ekvd
	tbrEuGOjPINd6sLZywfAkqb4b/LMS4ILVO39HvwDUOAjAtbFZcA9iFwbdIXcelTUcTy6+eorBJahe
	4S1dXpZ+KeArXVXldfanZmuX67SawDuXt+daxAztGhCjvukZ6J4hPQv6FaCfUZtEpyfITignh8gvT
	4erKxVgQIbpEm5sfa0Qvagyh4i/csZKAecP81GKcv/OjbIoYXII4H5WFyzlK9270r1U5014R/oqiX
	H+R2w8JSZWdEMS8V0lQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr5Is-00007e-Dm; Fri, 26 Jul 2019 18:50:54 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr5Im-000073-AS
 for linux-nvme@lists.infradead.org; Fri, 26 Jul 2019 18:50:49 +0000
Received: from s01061831bf6ec98c.cg.shawcable.net ([68.147.80.180]
 helo=[192.168.6.132])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1hr5Ig-00066u-Hu; Fri, 26 Jul 2019 12:50:43 -0600
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
References: <20190725185657.9025-1-sagi@grimberg.me>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <28bc494a-dba1-8fbd-8fcf-891d388f7c5f@deltatee.com>
Date: Fri, 26 Jul 2019 12:50:39 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190725185657.9025-1-sagi@grimberg.me>
Content-Language: en-US
X-SA-Exim-Connect-IP: 68.147.80.180
X-SA-Exim-Rcpt-To: keith.busch@intel.com, hch@lst.de,
 linux-nvme@lists.infradead.org, sagi@grimberg.me
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3] nvme: fix controller removal race with scan work
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_115048_697841_EFD92414 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 2019-07-25 12:56 p.m., Sagi Grimberg wrote:
> With multipath enabled, nvme_scan_work() can read from the device
> (through nvme_mpath_add_disk()) and hang [1]. However, with fabrics,
> once ctrl->state is set to NVME_CTRL_DELETING, the reads will hang
> (see nvmf_check_ready()) and the mpath stack device make_request
> will block if head->list is not empty. However, when the head->list
> consistst of only DELETING/DEAD controllers, we should actually not
> block, but rather fail immediately.
> 
> In addition, before we go ahead and remove the namespaces, make sure
> to clear the current path and kick the requeue list so that the
> request will fast fail upon requeuing.
> 
> [1]:
> --
>   INFO: task kworker/u4:3:166 blocked for more than 120 seconds.
>         Not tainted 5.2.0-rc6-vmlocalyes-00005-g808c8c2dc0cf #316
>   "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
>   kworker/u4:3    D    0   166      2 0x80004000
>   Workqueue: nvme-wq nvme_scan_work
>   Call Trace:
>    __schedule+0x851/0x1400
>    schedule+0x99/0x210
>    io_schedule+0x21/0x70
>    do_read_cache_page+0xa57/0x1330
>    read_cache_page+0x4a/0x70
>    read_dev_sector+0xbf/0x380
>    amiga_partition+0xc4/0x1230
>    check_partition+0x30f/0x630
>    rescan_partitions+0x19a/0x980
>    __blkdev_get+0x85a/0x12f0
>    blkdev_get+0x2a5/0x790
>    __device_add_disk+0xe25/0x1250
>    device_add_disk+0x13/0x20
>    nvme_mpath_set_live+0x172/0x2b0
>    nvme_update_ns_ana_state+0x130/0x180
>    nvme_set_ns_ana_state+0x9a/0xb0
>    nvme_parse_ana_log+0x1c3/0x4a0
>    nvme_mpath_add_disk+0x157/0x290
>    nvme_validate_ns+0x1017/0x1bd0
>    nvme_scan_work+0x44d/0x6a0
>    process_one_work+0x7d7/0x1240
>    worker_thread+0x8e/0xff0
>    kthread+0x2c3/0x3b0
>    ret_from_fork+0x35/0x40
> 
>    INFO: task kworker/u4:1:1034 blocked for more than 120 seconds.
>         Not tainted 5.2.0-rc6-vmlocalyes-00005-g808c8c2dc0cf #316
>   "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
>   kworker/u4:1    D    0  1034      2 0x80004000
>   Workqueue: nvme-delete-wq nvme_delete_ctrl_work
>   Call Trace:
>    __schedule+0x851/0x1400
>    schedule+0x99/0x210
>    schedule_timeout+0x390/0x830
>    wait_for_completion+0x1a7/0x310
>    __flush_work+0x241/0x5d0
>    flush_work+0x10/0x20
>    nvme_remove_namespaces+0x85/0x3d0
>    nvme_do_delete_ctrl+0xb4/0x1e0
>    nvme_delete_ctrl_work+0x15/0x20
>    process_one_work+0x7d7/0x1240
>    worker_thread+0x8e/0xff0
>    kthread+0x2c3/0x3b0
>    ret_from_fork+0x35/0x40
> --
> 
> Reported-by: Logan Gunthorpe <logang@deltatee.com>
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>

Tested-by: Logan Gunthorpe <logang@deltatee.com>
Reviewed-by: Logan Gunthorpe <logang@deltatee.com>

Looks good to me. Thanks!

Logan

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
