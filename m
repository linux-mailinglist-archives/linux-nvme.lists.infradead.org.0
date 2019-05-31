Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4723F317F4
	for <lists+linux-nvme@lfdr.de>; Sat,  1 Jun 2019 01:29:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3Htm6XCwcUcUDGBsgWNP7PHkLExEcolScF6ryiNKXQY=; b=taUo4SkYW7BCyeXIYYjadJdd3
	almOhQ+RFj7kBdR1nJqttbi3FoDGJHBOkHD02QBx6TvpNBZnGYCFNttO250x9YFDAF9DzX9PKRr2+
	J6ht19msDsaLqDeD1UZ/kGUrqxNsQnJnzcVMrh+pA0q0+fAQcuXg39S36eiaHoxEMz/ofbF384J5e
	Jozu6ZQY5hKrxrRtc6w+KNJ9gHwXzPA/JrZXgaqIsXopubZTM9ts6zlHGc28/LQtlghyyBMKoPL+i
	jg/Z/hcJA33bakILuiOfybLSZL/dBiAjrVofKegBOoAVngWrLmDJyA13I6EPxdWFac1IWirAt6Kxu
	FalGf9Pmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWqxc-0006ir-09; Fri, 31 May 2019 23:29:20 +0000
Received: from mail-wr1-f42.google.com ([209.85.221.42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWqxX-0006iY-Gm
 for linux-nvme@lists.infradead.org; Fri, 31 May 2019 23:29:17 +0000
Received: by mail-wr1-f42.google.com with SMTP id p11so2678260wre.7
 for <linux-nvme@lists.infradead.org>; Fri, 31 May 2019 16:29:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=3rJegpQxHQuc/X2EzZinIKZT05Ac8lpPvoPepRb2ySw=;
 b=qvfu+rbxHC02KGeLv0tXJRuTOIunHOd/8NrREmvm4O40B97ZoydljCSd/vbP/ivzWQ
 heGJYz5Of0zaGOHfloihB3XtdFkfPnRp+pdrG3Cs3FXZnZn8/FerMzaIgbiJfV5oYbd/
 SJiAR7yosn0tE5VAroKSfah/aHTY73u1Z4Ka9rkdslNsm+qnYcuw2pvQr9tdhyrerNVa
 TBskxwp5REfTzypJVoXSkVTXTDF+p6gJJlWUdyjqKDJQU4fkFo4Tz/tAiGdKghvQvK1T
 /YGC8/o4W3yKyj/KhxxTO5PjBecsnsJA8dACCsgvQO3LOM1ibWUzGIajYY7bK6oIaXS8
 bbsQ==
X-Gm-Message-State: APjAAAWxc9Y3cqhH+ILI39Fq+M+eZJMvojUq/oO3hI7jO8itjRRbDAFC
 BdA4KOXCuHr5eNlidi2ee3g=
X-Google-Smtp-Source: APXvYqwb6dDdkXt+I9qPmWKJpp+3mKv2uEbedqQpciDtZiRYIfrqeBtkwe+bS3tj9zJd8SMxUjRnWg==
X-Received: by 2002:a5d:5108:: with SMTP id s8mr1491830wrt.341.1559345353828; 
 Fri, 31 May 2019 16:29:13 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id d11sm8711414wrv.72.2019.05.31.16.29.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 31 May 2019 16:29:13 -0700 (PDT)
Subject: Re: [RFC PATCH 5/5] nvme-trace: Add tracing for req_comp in target
To: Minwoo Im <minwoo.im.dev@gmail.com>, linux-nvme@lists.infradead.org
References: <20190527175346.29972-1-minwoo.im.dev@gmail.com>
 <20190527175346.29972-6-minwoo.im.dev@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <b2e1e9f4-a96c-9f72-d787-1cd0a6248aa0@grimberg.me>
Date: Fri, 31 May 2019 16:29:06 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190527175346.29972-6-minwoo.im.dev@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_162915_560690_A9274174 
X-CRM114-Status: GOOD (  13.98  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 James Smart <james.smart@broadcom.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> @@ -207,20 +208,50 @@ TRACE_EVENT(nvme_complete_rq,
>   		__field(u16, status)
>   	    ),
>   	    TP_fast_assign(
> -		__entry->ctrl_id = nvme_req(req)->ctrl->instance;
> -		__entry->qid = nvme_req_qid(req);
> -		__entry->cid = req->tag;
> -		__entry->result = le64_to_cpu(nvme_req(req)->result.u64);
> -		__entry->retries = nvme_req(req)->retries;
> -		__entry->flags = nvme_req(req)->flags;
> -		__entry->status = nvme_req(req)->status;
> -		__assign_disk_name(__entry->disk, req->rq_disk);
> +		set_trace_type(__entry->type, req);
> +		if (__entry->type != NVME_TRACE_TARGET) {
> +			struct request *req = (struct request *) req;
> +
> +			__entry->ctrl_id = nvme_req(req)->ctrl->instance;
> +			__entry->qid = nvme_req_qid(req);
> +			__entry->cid = req->tag;
> +			__entry->result =
> +					le64_to_cpu(nvme_req(req)->result.u64);
> +			__entry->retries = nvme_req(req)->retries;
> +			__entry->flags = nvme_req(req)->flags;
> +			__entry->status = nvme_req(req)->status;
> +			__assign_disk_name(__entry->disk, req->rq_disk);
> +		} else {
> +			struct nvmet_ctrl *ctrl = nvmet_req_to_ctrl(req);
> +			struct nvmet_cq *cq = ((struct nvmet_req *) req)->cq;
> +			struct nvme_completion *cqe =
> +					((struct nvmet_req *) req)->cqe;
> +			struct nvmet_ns *ns = ((struct nvmet_req *) req)->ns;
> +
> +			__entry->ctrl_id = ctrl ? ctrl->cntlid : 0;
> +			__entry->qid = cq->qid;
> +			__entry->cid = cqe->command_id;
> +			__entry->result = cqe->result.u64;
> +			__entry->flags = 0;
> +			__entry->status = cqe->status >> 1;

Why not keep the dnr bit?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
