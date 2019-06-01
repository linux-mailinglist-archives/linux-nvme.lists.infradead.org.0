Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34EB03190F
	for <lists+linux-nvme@lfdr.de>; Sat,  1 Jun 2019 04:38:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ny1p4AlTYKXcXkcASQoLZyvYIjfzrxtppwn6a0uzt74=; b=SxJbn/JcUiwvTd
	iu+DG2bbeI3LkIPaq1IHczhjIcQYUXpdbfpCaAx6jbWk2ol4fTB9xHPQCM2MYrUbXUaqyd6t03hMq
	ZU8NAaXaDupMV1nf2bqEhvE0CWfJHT9rE6iOAIX42K34/uMpR8gBULLKNo+J/cgTE3dhND8op6VDF
	wunIZE3G7usPdfTCkrwlGa2eLX2VQIfvtNMJGgWyXj5rCD44U3eWaDVmnBw6OCc9jMEZzJtks9Ehn
	dUC2InbAQHQNBAAuhBvHOQRJlBuSIGafjANaJTku6e6dpuWwSCPGNqVHaAFsPIKK3BlTjg6R0uJDa
	QNFWp9Hcw8T1MGLY/Cqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWtuM-0003J0-GK; Sat, 01 Jun 2019 02:38:10 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWtuI-0003IW-0C
 for linux-nvme@lists.infradead.org; Sat, 01 Jun 2019 02:38:07 +0000
Received: by mail-pg1-x544.google.com with SMTP id v9so5012702pgr.13
 for <linux-nvme@lists.infradead.org>; Fri, 31 May 2019 19:38:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=fMw6nyevytf0tX7yfVGsJgKktbyobdgLwvoj1VgRKYI=;
 b=faZ2hdOP3PlNHkWXGSy/sRixpmQQMH1uuQkPKOkz5lHSTvEhWSDkcBvK+boy6cGhai
 i1prcDwFeqSXIMNf5ytqMjToRD0LQ2TEjg31kqzG6gsLVOiZe3XqS1FfgVvU9LqhAvMH
 0qmHxqcIZqOfK5gidngJYcP8ZNrTBiz+woDCy/KFUOYOtD/qUvrd2UoybkkU0E1YrSId
 eutJxASFFOZIvO4i/VGRYO5evgCiOYFasMHYLm5siGNeP/JPC/4/FU9SNPYbYBH+R6RV
 kHfEcfEdWb7iG+i4glfuCsRplRJa62sm7ASr9nTrSEhB5kBUkH74zX00twU9b1530JLv
 AKig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=fMw6nyevytf0tX7yfVGsJgKktbyobdgLwvoj1VgRKYI=;
 b=USAHIql95lwvEabqZqBwBxQknxGI+6Q8QCdP0f6xvOq/2AqSldQrXUFv2x4OZXek45
 dTn0tM4ZRmLpqb2FmXjs7GoDgh0YYzdCvPXewzVIlZQgg0fDRte1ld+1vKjSVdaiHWOy
 Da3jrzt5Agy8cytGES2pqV1Ff5AEor9D37TeZcMV0b4Y45Ds3hfJGT1boIX4Jzj3YJKn
 lhnyvQGD8mevviSDi82djpYiDjZRAfOPCZYhyJymn3f6HafsOfjQ6hCMfsC5317u7neX
 uLovc7QHVER4RyUdsEnUTTldsjzBn67yXwc+IashJ14mU122xnMRl/2F7Ucscm7nLu5y
 ANYw==
X-Gm-Message-State: APjAAAVeZcxelJc+iHxDiZlXP2VSTIWA5Tsss5rm9nCaNXlBWJkZGR8q
 ZzG3PP7VzekFYNplWFJNVGXysxkBOV0=
X-Google-Smtp-Source: APXvYqw0Tn+n+MR2RKYhckwb69EHVyZJMAMjR1iu6grXiF9yISQMLskmdgaqaP7+tonwyUfmJcp9KQ==
X-Received: by 2002:a17:90a:bb8d:: with SMTP id
 v13mr12987013pjr.79.1559356682975; 
 Fri, 31 May 2019 19:38:02 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id s2sm7832210pfe.105.2019.05.31.19.38.01
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 31 May 2019 19:38:02 -0700 (PDT)
Date: Sat, 1 Jun 2019 11:37:54 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [RFC PATCH 5/5] nvme-trace: Add tracing for req_comp in target
Message-ID: <20190601023752.GA3349@minwooim-desktop>
References: <20190527175346.29972-1-minwoo.im.dev@gmail.com>
 <20190527175346.29972-6-minwoo.im.dev@gmail.com>
 <b2e1e9f4-a96c-9f72-d787-1cd0a6248aa0@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b2e1e9f4-a96c-9f72-d787-1cd0a6248aa0@grimberg.me>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_193806_046360_7D7A1CE3 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Keith Busch <keith.busch@intel.com>, James Smart <james.smart@broadcom.com>,
 linux-nvme@lists.infradead.org, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-05-31 16:29:06, Sagi Grimberg wrote:
> 
> > @@ -207,20 +208,50 @@ TRACE_EVENT(nvme_complete_rq,
> >   		__field(u16, status)
> >   	    ),
> >   	    TP_fast_assign(
> > -		__entry->ctrl_id = nvme_req(req)->ctrl->instance;
> > -		__entry->qid = nvme_req_qid(req);
> > -		__entry->cid = req->tag;
> > -		__entry->result = le64_to_cpu(nvme_req(req)->result.u64);
> > -		__entry->retries = nvme_req(req)->retries;
> > -		__entry->flags = nvme_req(req)->flags;
> > -		__entry->status = nvme_req(req)->status;
> > -		__assign_disk_name(__entry->disk, req->rq_disk);
> > +		set_trace_type(__entry->type, req);
> > +		if (__entry->type != NVME_TRACE_TARGET) {
> > +			struct request *req = (struct request *) req;
> > +
> > +			__entry->ctrl_id = nvme_req(req)->ctrl->instance;
> > +			__entry->qid = nvme_req_qid(req);
> > +			__entry->cid = req->tag;
> > +			__entry->result =
> > +					le64_to_cpu(nvme_req(req)->result.u64);
> > +			__entry->retries = nvme_req(req)->retries;
> > +			__entry->flags = nvme_req(req)->flags;
> > +			__entry->status = nvme_req(req)->status;
> > +			__assign_disk_name(__entry->disk, req->rq_disk);
> > +		} else {
> > +			struct nvmet_ctrl *ctrl = nvmet_req_to_ctrl(req);
> > +			struct nvmet_cq *cq = ((struct nvmet_req *) req)->cq;
> > +			struct nvme_completion *cqe =
> > +					((struct nvmet_req *) req)->cqe;
> > +			struct nvmet_ns *ns = ((struct nvmet_req *) req)->ns;
> > +
> > +			__entry->ctrl_id = ctrl ? ctrl->cntlid : 0;
> > +			__entry->qid = cq->qid;
> > +			__entry->cid = cqe->command_id;
> > +			__entry->result = cqe->result.u64;
> > +			__entry->flags = 0;
> > +			__entry->status = cqe->status >> 1;
> 
> Why not keep the dnr bit?

Hi Sagi,

Thanks for your review on this.  It's just for phase tag which might
not need for us here.  Thanks to your review, I have realized that it
should be like:

	__entry->status = le16_to_cpu(cqe->status) >> 1;

I will prepare V5 patch series with this.

Thanks,

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
