Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20F3B8F195
	for <lists+linux-nvme@lfdr.de>; Thu, 15 Aug 2019 19:08:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xdW1lmAF5Yilz/+GN9TLvq+byESB+beXp8BJThIQnRs=; b=pQPsetI8X0OYRb9qiqccbwUur
	Dnef5RPutOExpRc5T58iH2R+/e1G129UmxY8LWXOo8gAlt8WyoZTicIRExx2mZUD6YoHm0H3Rptub
	t9rcclYON8MzcrRt0/EBZ0kXu7tMiJykE8OeW4rK63b+FkboKWz/b22fT9pN+T5LeE33wYNNAtAkE
	GFcl0vw3jx2QQQEJv02Wm/2oP+r7BlDr++lEGrt1XaC4NRt3ONEosapwZczJPJHgcKpnSJVyThB2M
	aPNp7nWWmGX0J+XSsWJgVvduOJM7C4MjUMTn8/Q6K91cn+gijZdy3mL3O5g21jTsJZZbo8qLS/vuG
	kSgzaJP3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyJER-0003mR-RZ; Thu, 15 Aug 2019 17:08:11 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyJEH-0003la-0J
 for linux-nvme@lists.infradead.org; Thu, 15 Aug 2019 17:08:05 +0000
Received: by mail-oi1-f195.google.com with SMTP id g7so2735814oia.8
 for <linux-nvme@lists.infradead.org>; Thu, 15 Aug 2019 10:07:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=y0awoxmojYJgDO5RMprtGWzkt74AeZwPomKi2mzKn1Y=;
 b=bU61n66OherS5IgAcY94idGdPBkRdCLy2LdyHmiZpB1y5MlPvllmh5DQqynD9mnGc4
 x49n7Z003Y7bINKIG6R687kqgdKPsFTkxqyTl8V4f3Y5THobToaoYbDCb5q22/gZK8/K
 IAsBFDTCOMWwzvXqlEFXPCytWrpi90AOnPdObPH2oMUqfbwuUhH+j8+g8od3vBZvtUw0
 iN3r4RNcvCsTsZh/G5hWI4LSM+OEykqaBpJMoeHg1yy+5TY/KZTRlTc6megnm4o45/Ue
 WuUTi8dqdlx1eqtpqyCNAlMp5bWH7poRow0ok/mM0sQoTXhOaYYfdpxswL40pcQSP2C4
 U1XA==
X-Gm-Message-State: APjAAAU5OFcFvxs8luMEhJpiwalhdD4FpzuzDSmWRhTr5c+BB7+RcvTM
 ps0eSB/W+aHgn4nuwuAEd+k=
X-Google-Smtp-Source: APXvYqzUD8mYvckIrP0RnfST+RgstF5Pkr25ymCQea8PYyX+b5CGbNP8fPHKvLq3+1zk7FlY/Ncfig==
X-Received: by 2002:aca:518a:: with SMTP id f132mr2070494oib.114.1565888876802; 
 Thu, 15 Aug 2019 10:07:56 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id s82sm627576oia.22.2019.08.15.10.07.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 15 Aug 2019 10:07:55 -0700 (PDT)
Subject: Re: [PATCH rfc] nvme: make all fabrics command run on a separate
 request queue
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
References: <20190808234643.8180-1-sagi@grimberg.me>
Message-ID: <bbba1841-a35f-567b-63e8-9c68c0bf1504@grimberg.me>
Date: Thu, 15 Aug 2019 10:07:51 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190808234643.8180-1-sagi@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_100801_056594_6A3A15E0 
X-CRM114-Status: GOOD (  30.55  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 Christoph Hellwig <hch@lst.de>, James Smart <james.smart@broadcom.com>,
 Johannes Thumshirn <jthumshirn@suse.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Ping? Hannes, James?

On 8/8/19 4:46 PM, Sagi Grimberg wrote:
> We have a fundamental issue that fabric commands use the admin_q.
> The reason is, that admin-connect, register reads and writes and
> admin commands cannot be guaranteed ordering while we are running
> controller resets.
> 
> For example, when we reset a controller we perform:
> 1. disable the controller
> 2. teardown the admin queue
> 3. re-establish the admin queue
> 4. enable the controller
> 
> In order to perform (3), we need to unquiesce the admin queue, however
> we may have some admin commands that are already pending on the
> quiesced admin_q and will immediate execute when we unquiesce it before
> we execute (4). The host must not send admin commands to the controller
> before enabling the controller.
> 
> To fix this, we have the fabric commands (admin connect and property
> get/set) use a separate fabrics_q and make sure to quiesce the admin_q
> before we disable the controller, and unquiesce it only after we enable
> the controller. This also fits the pci model where the admin commands
> and controller bar registers are accessed in different "channels".
> 
> This fixes the error prints from nvmet in a controller reset storm test:
> kernel: nvmet: got cmd 6 while CC.EN == 0 on qid = 0
> Which indicate that the host is sending an admin command when the
> controller is not enabled.
> 
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
> ---
>   drivers/nvme/host/core.c    |  3 ++-
>   drivers/nvme/host/fabrics.c |  8 ++++----
>   drivers/nvme/host/fc.c      | 15 ++++++++++++---
>   drivers/nvme/host/nvme.h    |  1 +
>   drivers/nvme/host/rdma.c    | 19 +++++++++++++++++--
>   drivers/nvme/host/tcp.c     | 19 +++++++++++++++++--
>   drivers/nvme/target/loop.c  | 16 +++++++++++++---
>   7 files changed, 66 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index ae30ed75dad9..ccd465220f1e 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -1623,7 +1623,8 @@ static int nvme_report_ns_ids(struct nvme_ctrl *ctrl, unsigned int nsid,
>   		ret = nvme_identify_ns_descs(ctrl, nsid, ids);
>   		if (ret)
>   			dev_warn(ctrl->device,
> -				 "%s: Identify Descriptors failed\n", __func__);
> +				 "%s: Identify Descriptors failed (%d)\n",
> +				 __func__, ret);
>   	}
>   	return ret;
>   }
> diff --git a/drivers/nvme/host/fabrics.c b/drivers/nvme/host/fabrics.c
> index d0d066307bb4..4801bdc7d85b 100644
> --- a/drivers/nvme/host/fabrics.c
> +++ b/drivers/nvme/host/fabrics.c
> @@ -150,7 +150,7 @@ int nvmf_reg_read32(struct nvme_ctrl *ctrl, u32 off, u32 *val)
>   	cmd.prop_get.fctype = nvme_fabrics_type_property_get;
>   	cmd.prop_get.offset = cpu_to_le32(off);
>   
> -	ret = __nvme_submit_sync_cmd(ctrl->admin_q, &cmd, &res, NULL, 0, 0,
> +	ret = __nvme_submit_sync_cmd(ctrl->fabrics_q, &cmd, &res, NULL, 0, 0,
>   			NVME_QID_ANY, 0, 0, false);
>   
>   	if (ret >= 0)
> @@ -197,7 +197,7 @@ int nvmf_reg_read64(struct nvme_ctrl *ctrl, u32 off, u64 *val)
>   	cmd.prop_get.attrib = 1;
>   	cmd.prop_get.offset = cpu_to_le32(off);
>   
> -	ret = __nvme_submit_sync_cmd(ctrl->admin_q, &cmd, &res, NULL, 0, 0,
> +	ret = __nvme_submit_sync_cmd(ctrl->fabrics_q, &cmd, &res, NULL, 0, 0,
>   			NVME_QID_ANY, 0, 0, false);
>   
>   	if (ret >= 0)
> @@ -243,7 +243,7 @@ int nvmf_reg_write32(struct nvme_ctrl *ctrl, u32 off, u32 val)
>   	cmd.prop_set.offset = cpu_to_le32(off);
>   	cmd.prop_set.value = cpu_to_le64(val);
>   
> -	ret = __nvme_submit_sync_cmd(ctrl->admin_q, &cmd, NULL, NULL, 0, 0,
> +	ret = __nvme_submit_sync_cmd(ctrl->fabrics_q, &cmd, NULL, NULL, 0, 0,
>   			NVME_QID_ANY, 0, 0, false);
>   	if (unlikely(ret))
>   		dev_err(ctrl->device,
> @@ -396,7 +396,7 @@ int nvmf_connect_admin_queue(struct nvme_ctrl *ctrl)
>   	strncpy(data->subsysnqn, ctrl->opts->subsysnqn, NVMF_NQN_SIZE);
>   	strncpy(data->hostnqn, ctrl->opts->host->nqn, NVMF_NQN_SIZE);
>   
> -	ret = __nvme_submit_sync_cmd(ctrl->admin_q, &cmd, &res,
> +	ret = __nvme_submit_sync_cmd(ctrl->fabrics_q, &cmd, &res,
>   			data, sizeof(*data), 0, NVME_QID_ANY, 1,
>   			BLK_MQ_REQ_RESERVED | BLK_MQ_REQ_NOWAIT, false);
>   	if (ret) {
> diff --git a/drivers/nvme/host/fc.c b/drivers/nvme/host/fc.c
> index c289f46f6d13..5680ec15f52c 100644
> --- a/drivers/nvme/host/fc.c
> +++ b/drivers/nvme/host/fc.c
> @@ -2029,6 +2029,7 @@ nvme_fc_ctrl_free(struct kref *ref)
>   
>   	blk_mq_unquiesce_queue(ctrl->ctrl.admin_q);
>   	blk_cleanup_queue(ctrl->ctrl.admin_q);
> +	blk_cleanup_queue(ctrl->ctrl.fabrics_q);
>   	blk_mq_free_tag_set(&ctrl->admin_tag_set);
>   
>   	kfree(ctrl->queues);
> @@ -2656,8 +2657,6 @@ nvme_fc_create_association(struct nvme_fc_ctrl *ctrl)
>   	if (ret)
>   		goto out_delete_hw_queue;
>   
> -	blk_mq_unquiesce_queue(ctrl->ctrl.admin_q);
> -
>   	ret = nvmf_connect_admin_queue(&ctrl->ctrl);
>   	if (ret)
>   		goto out_disconnect_admin_queue;
> @@ -2678,6 +2677,8 @@ nvme_fc_create_association(struct nvme_fc_ctrl *ctrl)
>   	ctrl->ctrl.max_hw_sectors =
>   		(ctrl->lport->ops->max_sgl_segments - 1) << (PAGE_SHIFT - 9);
>   
> +	blk_mq_unquiesce_queue(ctrl->ctrl.admin_q);
> +
>   	ret = nvme_init_identify(&ctrl->ctrl);
>   	if (ret)
>   		goto out_disconnect_admin_queue;
> @@ -3122,10 +3123,16 @@ nvme_fc_init_ctrl(struct device *dev, struct nvmf_ctrl_options *opts,
>   		goto out_free_queues;
>   	ctrl->ctrl.admin_tagset = &ctrl->admin_tag_set;
>   
> +	ctrl->ctrl.fabrics_q = blk_mq_init_queue(&ctrl->admin_tag_set);
> +	if (IS_ERR(ctrl->ctrl.fabrics_q)) {
> +		ret = PTR_ERR(ctrl->ctrl.fabrics_q);
> +		goto out_free_admin_tag_set;
> +	}
> +
>   	ctrl->ctrl.admin_q = blk_mq_init_queue(&ctrl->admin_tag_set);
>   	if (IS_ERR(ctrl->ctrl.admin_q)) {
>   		ret = PTR_ERR(ctrl->ctrl.admin_q);
> -		goto out_free_admin_tag_set;
> +		goto out_cleanup_fabrics_q;
>   	}
>   
>   	/*
> @@ -3197,6 +3204,8 @@ nvme_fc_init_ctrl(struct device *dev, struct nvmf_ctrl_options *opts,
>   
>   out_cleanup_admin_q:
>   	blk_cleanup_queue(ctrl->ctrl.admin_q);
> +out_cleanup_fabrics_q:
> +	blk_cleanup_queue(ctrl->ctrl.fabrics_q);
>   out_free_admin_tag_set:
>   	blk_mq_free_tag_set(&ctrl->admin_tag_set);
>   out_free_queues:
> diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
> index 8dc010ca30e5..c7736bad9c91 100644
> --- a/drivers/nvme/host/nvme.h
> +++ b/drivers/nvme/host/nvme.h
> @@ -164,6 +164,7 @@ struct nvme_ctrl {
>   	const struct nvme_ctrl_ops *ops;
>   	struct request_queue *admin_q;
>   	struct request_queue *connect_q;
> +	struct request_queue *fabrics_q;
>   	struct device *dev;
>   	int instance;
>   	int numa_node;
> diff --git a/drivers/nvme/host/rdma.c b/drivers/nvme/host/rdma.c
> index c029ef1bc510..f6007a973f70 100644
> --- a/drivers/nvme/host/rdma.c
> +++ b/drivers/nvme/host/rdma.c
> @@ -757,6 +757,7 @@ static void nvme_rdma_destroy_admin_queue(struct nvme_rdma_ctrl *ctrl,
>   {
>   	if (remove) {
>   		blk_cleanup_queue(ctrl->ctrl.admin_q);
> +		blk_cleanup_queue(ctrl->ctrl.fabrics_q);
>   		blk_mq_free_tag_set(ctrl->ctrl.admin_tagset);
>   	}
>   	if (ctrl->async_event_sqe.data) {
> @@ -798,10 +799,16 @@ static int nvme_rdma_configure_admin_queue(struct nvme_rdma_ctrl *ctrl,
>   			goto out_free_async_qe;
>   		}
>   
> +		ctrl->ctrl.fabrics_q = blk_mq_init_queue(&ctrl->admin_tag_set);
> +		if (IS_ERR(ctrl->ctrl.fabrics_q)) {
> +			error = PTR_ERR(ctrl->ctrl.fabrics_q);
> +			goto out_free_tagset;
> +		}
> +
>   		ctrl->ctrl.admin_q = blk_mq_init_queue(&ctrl->admin_tag_set);
>   		if (IS_ERR(ctrl->ctrl.admin_q)) {
>   			error = PTR_ERR(ctrl->ctrl.admin_q);
> -			goto out_free_tagset;
> +			goto out_cleanup_fabrics_q;
>   		}
>   	}
>   
> @@ -816,6 +823,8 @@ static int nvme_rdma_configure_admin_queue(struct nvme_rdma_ctrl *ctrl,
>   	ctrl->ctrl.max_hw_sectors =
>   		(ctrl->max_fr_pages - 1) << (ilog2(SZ_4K) - 9);
>   
> +	blk_mq_unquiesce_queue(ctrl->ctrl.admin_q);
> +
>   	error = nvme_init_identify(&ctrl->ctrl);
>   	if (error)
>   		goto out_stop_queue;
> @@ -827,6 +836,9 @@ static int nvme_rdma_configure_admin_queue(struct nvme_rdma_ctrl *ctrl,
>   out_cleanup_queue:
>   	if (new)
>   		blk_cleanup_queue(ctrl->ctrl.admin_q);
> +out_cleanup_fabrics_q:
> +	if (new)
> +		blk_cleanup_queue(ctrl->ctrl.fabrics_q);
>   out_free_tagset:
>   	if (new)
>   		blk_mq_free_tag_set(ctrl->ctrl.admin_tagset);
> @@ -899,7 +911,8 @@ static void nvme_rdma_teardown_admin_queue(struct nvme_rdma_ctrl *ctrl,
>   	if (ctrl->ctrl.admin_tagset)
>   		blk_mq_tagset_busy_iter(ctrl->ctrl.admin_tagset,
>   			nvme_cancel_request, &ctrl->ctrl);
> -	blk_mq_unquiesce_queue(ctrl->ctrl.admin_q);
> +	if (remove)
> +		blk_mq_unquiesce_queue(ctrl->ctrl.admin_q);
>   	nvme_rdma_destroy_admin_queue(ctrl, remove);
>   }
>   
> @@ -1048,6 +1061,7 @@ static void nvme_rdma_error_recovery_work(struct work_struct *work)
>   	nvme_rdma_teardown_io_queues(ctrl, false);
>   	nvme_start_queues(&ctrl->ctrl);
>   	nvme_rdma_teardown_admin_queue(ctrl, false);
> +	blk_mq_unquiesce_queue(ctrl->ctrl.admin_q);
>   
>   	if (!nvme_change_ctrl_state(&ctrl->ctrl, NVME_CTRL_CONNECTING)) {
>   		/* state change failure is ok if we're in DELETING state */
> @@ -1858,6 +1872,7 @@ static void nvme_rdma_shutdown_ctrl(struct nvme_rdma_ctrl *ctrl, bool shutdown)
>   	cancel_delayed_work_sync(&ctrl->reconnect_work);
>   
>   	nvme_rdma_teardown_io_queues(ctrl, shutdown);
> +	blk_mq_quiesce_queue(ctrl->ctrl.admin_q);
>   	if (shutdown)
>   		nvme_shutdown_ctrl(&ctrl->ctrl);
>   	else
> diff --git a/drivers/nvme/host/tcp.c b/drivers/nvme/host/tcp.c
> index 7daf39f31b08..5f5fb1dd922d 100644
> --- a/drivers/nvme/host/tcp.c
> +++ b/drivers/nvme/host/tcp.c
> @@ -1691,6 +1691,7 @@ static void nvme_tcp_destroy_admin_queue(struct nvme_ctrl *ctrl, bool remove)
>   	nvme_tcp_stop_queue(ctrl, 0);
>   	if (remove) {
>   		blk_cleanup_queue(ctrl->admin_q);
> +		blk_cleanup_queue(ctrl->fabrics_q);
>   		blk_mq_free_tag_set(ctrl->admin_tagset);
>   	}
>   	nvme_tcp_free_admin_queue(ctrl);
> @@ -1711,10 +1712,16 @@ static int nvme_tcp_configure_admin_queue(struct nvme_ctrl *ctrl, bool new)
>   			goto out_free_queue;
>   		}
>   
> +		ctrl->fabrics_q = blk_mq_init_queue(ctrl->admin_tagset);
> +		if (IS_ERR(ctrl->fabrics_q)) {
> +			error = PTR_ERR(ctrl->fabrics_q);
> +			goto out_free_tagset;
> +		}
> +
>   		ctrl->admin_q = blk_mq_init_queue(ctrl->admin_tagset);
>   		if (IS_ERR(ctrl->admin_q)) {
>   			error = PTR_ERR(ctrl->admin_q);
> -			goto out_free_tagset;
> +			goto out_cleanup_fabrics_q;
>   		}
>   	}
>   
> @@ -1726,6 +1733,8 @@ static int nvme_tcp_configure_admin_queue(struct nvme_ctrl *ctrl, bool new)
>   	if (error)
>   		goto out_stop_queue;
>   
> +	blk_mq_unquiesce_queue(ctrl->admin_q);
> +
>   	error = nvme_init_identify(ctrl);
>   	if (error)
>   		goto out_stop_queue;
> @@ -1737,6 +1746,9 @@ static int nvme_tcp_configure_admin_queue(struct nvme_ctrl *ctrl, bool new)
>   out_cleanup_queue:
>   	if (new)
>   		blk_cleanup_queue(ctrl->admin_q);
> +out_cleanup_fabrics_q:
> +	if (new)
> +		blk_cleanup_queue(ctrl->fabrics_q);
>   out_free_tagset:
>   	if (new)
>   		blk_mq_free_tag_set(ctrl->admin_tagset);
> @@ -1753,7 +1765,8 @@ static void nvme_tcp_teardown_admin_queue(struct nvme_ctrl *ctrl,
>   	if (ctrl->admin_tagset)
>   		blk_mq_tagset_busy_iter(ctrl->admin_tagset,
>   			nvme_cancel_request, ctrl);
> -	blk_mq_unquiesce_queue(ctrl->admin_q);
> +	if (remove)
> +		blk_mq_unquiesce_queue(ctrl->admin_q);
>   	nvme_tcp_destroy_admin_queue(ctrl, remove);
>   }
>   
> @@ -1878,6 +1891,7 @@ static void nvme_tcp_error_recovery_work(struct work_struct *work)
>   	/* unquiesce to fail fast pending requests */
>   	nvme_start_queues(ctrl);
>   	nvme_tcp_teardown_admin_queue(ctrl, false);
> +	blk_mq_unquiesce_queue(ctrl->admin_q);
>   
>   	if (!nvme_change_ctrl_state(ctrl, NVME_CTRL_CONNECTING)) {
>   		/* state change failure is ok if we're in DELETING state */
> @@ -1894,6 +1908,7 @@ static void nvme_tcp_teardown_ctrl(struct nvme_ctrl *ctrl, bool shutdown)
>   	cancel_delayed_work_sync(&to_tcp_ctrl(ctrl)->connect_work);
>   
>   	nvme_tcp_teardown_io_queues(ctrl, shutdown);
> +	blk_mq_quiesce_queue(ctrl->admin_q);
>   	if (shutdown)
>   		nvme_shutdown_ctrl(ctrl);
>   	else
> diff --git a/drivers/nvme/target/loop.c b/drivers/nvme/target/loop.c
> index d8078d7014eb..b78d10dba6f5 100644
> --- a/drivers/nvme/target/loop.c
> +++ b/drivers/nvme/target/loop.c
> @@ -253,6 +253,7 @@ static void nvme_loop_destroy_admin_queue(struct nvme_loop_ctrl *ctrl)
>   	clear_bit(NVME_LOOP_Q_LIVE, &ctrl->queues[0].flags);
>   	nvmet_sq_destroy(&ctrl->queues[0].nvme_sq);
>   	blk_cleanup_queue(ctrl->ctrl.admin_q);
> +	blk_cleanup_queue(ctrl->ctrl.fabrics_q);
>   	blk_mq_free_tag_set(&ctrl->admin_tag_set);
>   }
>   
> @@ -357,10 +358,16 @@ static int nvme_loop_configure_admin_queue(struct nvme_loop_ctrl *ctrl)
>   		goto out_free_sq;
>   	ctrl->ctrl.admin_tagset = &ctrl->admin_tag_set;
>   
> +	ctrl->ctrl.fabrics_q = blk_mq_init_queue(&ctrl->admin_tag_set);
> +	if (IS_ERR(ctrl->ctrl.fabrics_q)) {
> +		error = PTR_ERR(ctrl->ctrl.fabrics_q);
> +		goto out_free_tagset;
> +	}
> +
>   	ctrl->ctrl.admin_q = blk_mq_init_queue(&ctrl->admin_tag_set);
>   	if (IS_ERR(ctrl->ctrl.admin_q)) {
>   		error = PTR_ERR(ctrl->ctrl.admin_q);
> -		goto out_free_tagset;
> +		goto out_cleanup_fabrics_q;
>   	}
>   
>   	error = nvmf_connect_admin_queue(&ctrl->ctrl);
> @@ -376,6 +383,8 @@ static int nvme_loop_configure_admin_queue(struct nvme_loop_ctrl *ctrl)
>   	ctrl->ctrl.max_hw_sectors =
>   		(NVME_LOOP_MAX_SEGMENTS - 1) << (PAGE_SHIFT - 9);
>   
> +	blk_mq_unquiesce_queue(ctrl->ctrl.admin_q);
> +
>   	error = nvme_init_identify(&ctrl->ctrl);
>   	if (error)
>   		goto out_cleanup_queue;
> @@ -384,6 +393,8 @@ static int nvme_loop_configure_admin_queue(struct nvme_loop_ctrl *ctrl)
>   
>   out_cleanup_queue:
>   	blk_cleanup_queue(ctrl->ctrl.admin_q);
> +out_cleanup_fabrics_q:
> +	blk_cleanup_queue(ctrl->ctrl.fabrics_q);
>   out_free_tagset:
>   	blk_mq_free_tag_set(&ctrl->admin_tag_set);
>   out_free_sq:
> @@ -400,13 +411,12 @@ static void nvme_loop_shutdown_ctrl(struct nvme_loop_ctrl *ctrl)
>   		nvme_loop_destroy_io_queues(ctrl);
>   	}
>   
> +	blk_mq_quiesce_queue(ctrl->ctrl.admin_q);
>   	if (ctrl->ctrl.state == NVME_CTRL_LIVE)
>   		nvme_shutdown_ctrl(&ctrl->ctrl);
>   
> -	blk_mq_quiesce_queue(ctrl->ctrl.admin_q);
>   	blk_mq_tagset_busy_iter(&ctrl->admin_tag_set,
>   				nvme_cancel_request, &ctrl->ctrl);
> -	blk_mq_unquiesce_queue(ctrl->ctrl.admin_q);
>   	nvme_loop_destroy_admin_queue(ctrl);
>   }
>   
> 

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
