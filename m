Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0988E5546
	for <lists+linux-nvme@lfdr.de>; Fri, 25 Oct 2019 22:41:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2ft+Bd/I0HwOMHJbssu8QK+alF5oNMrElSXXXiVG1QI=; b=XL4nms7jRfg20VmV6PFBJhr+2
	wY/s8gno2wTmyB1E7yxpDbag7cNUoo1IBXl1XldbkkharTypIE8T8nJeSMXEEQ8Q9KXRrOmFy/xio
	GJBdRh37JnNFqhobTNYxroXyvnOcs5WwZl0n4qfC/T6TMu3Gg4nH+qcTLB0OGZ0kzHbpCf4dIWXI2
	E5Vqy9C9QAp1ntHRpYMXbVCeC/reYqNQOQxjLo8J7/1+Vz3Z0AvkXJLthwqDHOO80LzL+B0ESZyk3
	hc9mEHLbq7lxevAGItAeIinKHaE5P7Q9KpnEqW0HwhaFvJ5F0C30RIrRq+I7utI30KEwKWU3PnAj1
	2puTzDytQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO6OY-0005eh-Ge; Fri, 25 Oct 2019 20:41:14 +0000
Received: from mail-wr1-f66.google.com ([209.85.221.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO6OT-0005e6-Gh
 for linux-nvme@lists.infradead.org; Fri, 25 Oct 2019 20:41:10 +0000
Received: by mail-wr1-f66.google.com with SMTP id e11so3797202wrv.4
 for <linux-nvme@lists.infradead.org>; Fri, 25 Oct 2019 13:41:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=WxaN07sSqtpOjQ8EKnsRqm+aBhSXVnsjsX8SbYw017g=;
 b=bYsO9m48fgFOewVzDkEeIYH+xuOiodMFmsRUekgyIW+x+0mzj4hG6uo02ZDPVOGGSb
 h/K24A4yHh6ndBZIj+ohZuRXsLCN8WQQhuraIVTi4VPdWj2//zimvLuNgVPcTbFEcebB
 atS5on84hAmi/F5VkdcUJDvgV6a58ALwzGzrh2OqwR+nh+sZQ52k3xQq6BOFORJ9NrpK
 f14QcN6BI89JJ3ZggRdu0a5RCCtAoafph3rjaQeMh6BXU9kFzhg1/OMfGwmi/NtiFRc2
 OqY+Px7qE0/2CvLFkALLx7K5LYiaBsQ7J3K0TbvJlux8799YDMzpoOKLaucW8QhpiggK
 s6Gg==
X-Gm-Message-State: APjAAAWiaCNezrgGiClLZwXIaJwXRw48ibo8F5nJaESBR+noRgbvHbuj
 qhKQD18ktXtvD2L6Ui2tPVA=
X-Google-Smtp-Source: APXvYqwv23KqkZ9Ld6EaW+bnb9urb/8b9uYNk1FAv2FBIqFRCly/KVqtj4SN6aURgHksLgo6LzXPMQ==
X-Received: by 2002:a5d:4f8b:: with SMTP id d11mr4844042wru.25.1572036067285; 
 Fri, 25 Oct 2019 13:41:07 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id u1sm2725219wmc.38.2019.10.25.13.41.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 25 Oct 2019 13:41:06 -0700 (PDT)
Subject: Re: [RFC PATCH 3/3] nvme: Introduce nvme_execute_passthru_rq_nowait()
To: Logan Gunthorpe <logang@deltatee.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org
References: <20191025202535.12036-1-logang@deltatee.com>
 <20191025202535.12036-4-logang@deltatee.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <28b40ab8-c695-784e-3f52-03a18b891d25@grimberg.me>
Date: Fri, 25 Oct 2019 13:41:03 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191025202535.12036-4-logang@deltatee.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_134109_556698_FC4B89B2 
X-CRM114-Status: GOOD (  15.86  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.66 listed in wl.mailspike.net]
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
Cc: Keith Busch <kbusch@kernel.org>, Max Gurtovoy <maxg@mellanox.com>,
 Christoph Hellwig <hch@lst.de>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Stephen Bates <sbates@raithlin.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> +#ifdef CONFIG_NVME_TARGET_PASSTHRU
> +static void nvme_execute_passthru_rq_work(struct work_struct *w)
> +{
> +	struct nvme_request *req = container_of(w, struct nvme_request, work);
> +	struct request *rq = blk_mq_rq_from_pdu(req);
> +	rq_end_io_fn *done = rq->end_io;
> +	void *end_io_data = rq->end_io_data;

Why is end_io_data stored to a local variable here? where is it set?

> +
> +	nvme_execute_passthru_rq(rq);
> +
> +	if (done) {
> +		rq->end_io_data = end_io_data;
> +		done(rq, 0);
> +	}
> +}
> +
> +void nvme_execute_passthru_rq_nowait(struct request *rq, rq_end_io_fn *done)
> +{
> +	struct nvme_command *cmd = nvme_req(rq)->cmd;
> +	struct nvme_ctrl *ctrl = nvme_req(rq)->ctrl;
> +	struct nvme_ns *ns = rq->q->queuedata;
> +	struct gendisk *disk = ns ? ns->disk : NULL;
> +	u32 effects;
> +
> +	/*
> +	 * This function may be called in interrupt context, so we cannot sleep
> +	 * but nvme_passthru_[start|end]() may sleep so we need to execute
> +	 * the command in a work queue.
> +	 */
> +	effects = nvme_command_effects(ctrl, ns, cmd->common.opcode);
> +	if (effects) {
> +		rq->end_io = done;
> +		INIT_WORK(&nvme_req(rq)->work, nvme_execute_passthru_rq_work);
> +		queue_work(nvme_wq, &nvme_req(rq)->work);

This work will need to be flushed when in nvme_stop_ctrl. That is
assuming that it will fail-fast and not hang (which it should given
that its a passthru command that is allocated via nvme_alloc_request).

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
