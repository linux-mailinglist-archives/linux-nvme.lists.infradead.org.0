Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0385E7CC0B
	for <lists+linux-nvme@lfdr.de>; Wed, 31 Jul 2019 20:36:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OIlu5Jt5CLaCxTcVrNQ/PvBNVNxElmQpPtQjo11B7aY=; b=rpLMiaeIzrfC8R
	qUVZzZ6gWSmoZFc97grKpZzrd1Q77M4d0OTyqB8wONQs2vpJtn/gNdNiT7BBA2IQKZ0+6dS72bT8O
	B17JYYzj3yFxlclJ9uTuuoaES5ka8iCw6FdCFfiYArcEsiahuTHKrBtXnSjd+zWVO4XYQf4wlAmtS
	cMz3W4lP8TdewDIe4gTpRqaH1znLUADYQSEqy1cWjqh+wYML+5V+xihSI8GhhUHHwz02a6Z3HvkCV
	m7AjTJYwwr8uq81rhUGeRYbiy39Sg3IIradc76BGpJYcsVlstWkU5lxoYqGiDh7WMufYWNVilOCFB
	nOoozrCdp4FjqzobN68Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hstSV-00055u-2i; Wed, 31 Jul 2019 18:36:19 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hstSN-00052E-Rj
 for linux-nvme@lists.infradead.org; Wed, 31 Jul 2019 18:36:14 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x6VIYEEk038707;
 Wed, 31 Jul 2019 18:35:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2018-07-02;
 bh=3D38Jjj12G3VVoiIxhNbuWWDQGCbAilIXDwtZlarilM=;
 b=4HNA1BVPrbj5H+4PdZIpj7q+zHM7rYSKZKEtIf+UwhwGRi7Fq+SZrLuoe/Uim2Tm1SRu
 1owePL5JkhX2+WsP5Dp9usP1arNMGgTJeWNipEEYjcVPKEMVvyAV980nvbQ1Zw4mWg60
 KYczEYUgE5nqVTfa7ksEVsberdgnm8egczGrPWWr6CiOUjampKKV/SlpN0TROCzkh3r8
 LXnjaRywuw+MZijK2Z7l31MEuURFEzNzOeJw5nSFV0jUrMpU6GArG4L82Qh2XGoFB/wI
 A+tvY+f/Q3G2PLIL1LLKeP8X7+02Kto02A/4tdp+V4R4sGcaotXPI9YkrRz9MrQG7WMO Ew== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 2u0ejpq1qg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 31 Jul 2019 18:35:53 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x6VIWXn7146547;
 Wed, 31 Jul 2019 18:35:52 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 2u38fb8ueu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 31 Jul 2019 18:35:52 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x6VIZpZj017708;
 Wed, 31 Jul 2019 18:35:51 GMT
Received: from [10.39.247.19] (/10.39.247.19)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 31 Jul 2019 11:35:50 -0700
Subject: Re: [PATCH] nvme: fix a possible deadlock when passthru commands sent
 to a multipath device
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
References: <20190731180026.4725-1-sagi@grimberg.me>
From: james.puthukattukaran@oracle.com
Organization: Oracle Corporation
Message-ID: <975e12bd-adf6-4c81-f544-c135a2b27a9d@oracle.com>
Date: Wed, 31 Jul 2019 14:35:49 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <20190731180026.4725-1-sagi@grimberg.me>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9335
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1907310187
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9335
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1907310187
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_113612_007261_F635B163 
X-CRM114-Status: GOOD (  31.55  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

Fix verified
Tested-by: James Puthukattukaran <james.puthukattukaran@oracle.com>

On 07/31/2019 02:00 PM, Sagi Grimberg wrote:
> When the user issues a command with side effects, we will end up freezing
> the namespace request queue when updating disk info (and the same for
> the corresponding mpath disk node).
> 
> However, we are not freezing the mpath node request queue,
> which means that mpath I/O can still come in and block on blk_queue_enter
> (called from nvme_ns_head_make_request -> direct_make_request).
> 
> This is a deadlock, because blk_queue_enter will block until the inner
> namespace request queue is unfroze, but that process is blocked because
> the namespace revalidation is trying to update the mpath disk info
> and freeze its request queue (which will never complete because
> of the I/O that is blocked on blk_queue_enter).
> 
> Fix this by freezing all the subsystem nsheads request queues before
> executing the passthru command. Given that these commands are infrequent
> we should not worry about this temporary I/O freeze to keep things sane.
> 
> Here is the matching hang traces:
> --
> [ 374.465002] INFO: task systemd-udevd:17994 blocked for more than 122 seconds.
> [ 374.472975] Not tainted 5.2.0-rc3-mpdebug+ #42
> [ 374.478522] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
> [ 374.487274] systemd-udevd D 0 17994 1 0x00000000
> [ 374.493407] Call Trace:
> [ 374.496145] __schedule+0x2ef/0x620
> [ 374.500047] schedule+0x38/0xa0
> [ 374.503569] blk_queue_enter+0x139/0x220
> [ 374.507959] ? remove_wait_queue+0x60/0x60
> [ 374.512540] direct_make_request+0x60/0x130
> [ 374.517219] nvme_ns_head_make_request+0x11d/0x420 [nvme_core]
> [ 374.523740] ? generic_make_request_checks+0x307/0x6f0
> [ 374.529484] generic_make_request+0x10d/0x2e0
> [ 374.534356] submit_bio+0x75/0x140
> [ 374.538163] ? guard_bio_eod+0x32/0xe0
> [ 374.542361] submit_bh_wbc+0x171/0x1b0
> [ 374.546553] block_read_full_page+0x1ed/0x330
> [ 374.551426] ? check_disk_change+0x70/0x70
> [ 374.556008] ? scan_shadow_nodes+0x30/0x30
> [ 374.560588] blkdev_readpage+0x18/0x20
> [ 374.564783] do_read_cache_page+0x301/0x860
> [ 374.569463] ? blkdev_writepages+0x10/0x10
> [ 374.574037] ? prep_new_page+0x88/0x130
> [ 374.578329] ? get_page_from_freelist+0xa2f/0x1280
> [ 374.583688] ? __alloc_pages_nodemask+0x179/0x320
> [ 374.588947] read_cache_page+0x12/0x20
> [ 374.593142] read_dev_sector+0x2d/0xd0
> [ 374.597337] read_lba+0x104/0x1f0
> [ 374.601046] find_valid_gpt+0xfa/0x720
> [ 374.605243] ? string_nocheck+0x58/0x70
> [ 374.609534] ? find_valid_gpt+0x720/0x720
> [ 374.614016] efi_partition+0x89/0x430
> [ 374.618113] ? string+0x48/0x60
> [ 374.621632] ? snprintf+0x49/0x70
> [ 374.625339] ? find_valid_gpt+0x720/0x720
> [ 374.629828] check_partition+0x116/0x210
> [ 374.634214] rescan_partitions+0xb6/0x360
> [ 374.638699] __blkdev_reread_part+0x64/0x70
> [ 374.643377] blkdev_reread_part+0x23/0x40
> [ 374.647860] blkdev_ioctl+0x48c/0x990
> [ 374.651956] block_ioctl+0x41/0x50
> [ 374.655766] do_vfs_ioctl+0xa7/0x600
> [ 374.659766] ? locks_lock_inode_wait+0xb1/0x150
> [ 374.664832] ksys_ioctl+0x67/0x90
> [ 374.668539] __x64_sys_ioctl+0x1a/0x20
> [ 374.672732] do_syscall_64+0x5a/0x1c0
> [ 374.676828] entry_SYSCALL_64_after_hwframe+0x44/0xa9
> 
> [ 374.738474] INFO: task nvmeadm:49141 blocked for more than 123 seconds.
> [ 374.745871] Not tainted 5.2.0-rc3-mpdebug+ #42
> [ 374.751419] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
> [ 374.760170] nvmeadm D 0 49141 36333 0x00004080
> [ 374.766301] Call Trace:
> [ 374.769038] __schedule+0x2ef/0x620
> [ 374.772939] schedule+0x38/0xa0
> [ 374.776452] blk_mq_freeze_queue_wait+0x59/0x100
> [ 374.781614] ? remove_wait_queue+0x60/0x60
> [ 374.786192] blk_mq_freeze_queue+0x1a/0x20
> [ 374.790773] nvme_update_disk_info.isra.57+0x5f/0x350 [nvme_core]
> [ 374.797582] ? nvme_identify_ns.isra.50+0x71/0xc0 [nvme_core]
> [ 374.804006] __nvme_revalidate_disk+0xe5/0x110 [nvme_core]
> [ 374.810139] nvme_revalidate_disk+0xa6/0x120 [nvme_core]
> [ 374.816078] ? nvme_submit_user_cmd+0x11e/0x320 [nvme_core]
> [ 374.822299] nvme_user_cmd+0x264/0x370 [nvme_core]
> [ 374.827661] nvme_dev_ioctl+0x112/0x1d0 [nvme_core]
> [ 374.833114] do_vfs_ioctl+0xa7/0x600
> [ 374.837117] ? __audit_syscall_entry+0xdd/0x130
> [ 374.842184] ksys_ioctl+0x67/0x90
> [ 374.845891] __x64_sys_ioctl+0x1a/0x20
> [ 374.850082] do_syscall_64+0x5a/0x1c0
> [ 374.854178] entry_SYSCALL_64_after_hwframe+0x44/0xa9
> --
> 
> Reported-by: James Puthukattukaran <james.puthukattukaran@oracle.com>
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
> ---
>  drivers/nvme/host/core.c      |  5 +++++
>  drivers/nvme/host/multipath.c | 30 ++++++++++++++++++++++++++++++
>  drivers/nvme/host/nvme.h      | 12 ++++++++++++
>  3 files changed, 47 insertions(+)
> 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 4ae8059f5361..c9e887845d74 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -1289,6 +1289,9 @@ static u32 nvme_passthru_start(struct nvme_ctrl *ctrl, struct nvme_ns *ns,
>  	 */
>  	if (effects & (NVME_CMD_EFFECTS_LBCC | NVME_CMD_EFFECTS_CSE_MASK)) {
>  		mutex_lock(&ctrl->scan_lock);
> +		mutex_lock(&ctrl->subsys->lock);
> +		nvme_mpath_start_freeze(ctrl->subsys);
> +		nvme_mpath_wait_freeze(ctrl->subsys);
>  		nvme_start_freeze(ctrl);
>  		nvme_wait_freeze(ctrl);
>  	}
> @@ -1319,6 +1322,8 @@ static void nvme_passthru_end(struct nvme_ctrl *ctrl, u32 effects)
>  		nvme_update_formats(ctrl);
>  	if (effects & (NVME_CMD_EFFECTS_LBCC | NVME_CMD_EFFECTS_CSE_MASK)) {
>  		nvme_unfreeze(ctrl);
> +		nvme_mpath_unfreeze(ctrl->subsys);
> +		mutex_unlock(&ctrl->subsys->lock);
>  		mutex_unlock(&ctrl->scan_lock);
>  	}
>  	if (effects & NVME_CMD_EFFECTS_CCC)
> diff --git a/drivers/nvme/host/multipath.c b/drivers/nvme/host/multipath.c
> index 3be27be4f60c..888d4543894e 100644
> --- a/drivers/nvme/host/multipath.c
> +++ b/drivers/nvme/host/multipath.c
> @@ -12,6 +12,36 @@ module_param(multipath, bool, 0444);
>  MODULE_PARM_DESC(multipath,
>  	"turn on native support for multiple controllers per subsystem");
>  
> +void nvme_mpath_unfreeze(struct nvme_subsystem *subsys)
> +{
> +	struct nvme_ns_head *h;
> +
> +	lockdep_assert_held(&subsys->lock);
> +	list_for_each_entry(h, &subsys->nsheads, entry)
> +		if (h->disk)
> +			blk_mq_unfreeze_queue(h->disk->queue);
> +}
> +
> +void nvme_mpath_wait_freeze(struct nvme_subsystem *subsys)
> +{
> +	struct nvme_ns_head *h;
> +
> +	lockdep_assert_held(&subsys->lock);
> +	list_for_each_entry(h, &subsys->nsheads, entry)
> +		if (h->disk)
> +			blk_mq_freeze_queue_wait(h->disk->queue);
> +}
> +
> +void nvme_mpath_start_freeze(struct nvme_subsystem *subsys)
> +{
> +	struct nvme_ns_head *h;
> +
> +	lockdep_assert_held(&subsys->lock);
> +	list_for_each_entry(h, &subsys->nsheads, entry)
> +		if (h->disk)
> +			blk_freeze_queue_start(h->disk->queue);
> +}
> +
>  /*
>   * If multipathing is enabled we need to always use the subsystem instance
>   * number for numbering our devices to avoid conflicts between subsystems that
> diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
> index f6292888e50f..8dc010ca30e5 100644
> --- a/drivers/nvme/host/nvme.h
> +++ b/drivers/nvme/host/nvme.h
> @@ -490,6 +490,9 @@ static inline bool nvme_ctrl_use_ana(struct nvme_ctrl *ctrl)
>  	return ctrl->ana_log_buf != NULL;
>  }
>  
> +void nvme_mpath_unfreeze(struct nvme_subsystem *subsys);
> +void nvme_mpath_wait_freeze(struct nvme_subsystem *subsys);
> +void nvme_mpath_start_freeze(struct nvme_subsystem *subsys);
>  void nvme_set_disk_name(char *disk_name, struct nvme_ns *ns,
>  			struct nvme_ctrl *ctrl, int *flags);
>  void nvme_failover_req(struct request *req);
> @@ -573,6 +576,15 @@ static inline void nvme_mpath_uninit(struct nvme_ctrl *ctrl)
>  static inline void nvme_mpath_stop(struct nvme_ctrl *ctrl)
>  {
>  }
> +static inline void nvme_mpath_unfreeze(struct nvme_subsystem *subsys)
> +{
> +}
> +static inline void nvme_mpath_wait_freeze(struct nvme_subsystem *subsys)
> +{
> +}
> +static inline void nvme_mpath_start_freeze(struct nvme_subsystem *subsys)
> +{
> +}
>  #endif /* CONFIG_NVME_MULTIPATH */
>  
>  #ifdef CONFIG_NVM
> 

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
