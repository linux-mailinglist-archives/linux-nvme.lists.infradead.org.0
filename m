Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BAC41888FF
	for <lists+linux-nvme@lfdr.de>; Tue, 17 Mar 2020 16:19:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fagIpjfFVrBblIibvyhgl0gMNKJd6OvIXD9yIGjjwvA=; b=ryJxy5O+PKWrJC
	OrKFrq+i5GNnfjiTU4k1YcOsho6q3PRRBcqELXGQuUM5NZEbAo2cfJhyFVTnNe8RJ+dCsvPalomZF
	gepiwxqrc4NDx/iWYMgV1o1fbc4FuEF4lDKi5WZl85EMc9cqJPNLGpmgsn1GAaWv7qTEWz5cQl3AF
	fnHrD9DNAUZWvWAOe1SJvLQkvyrmceVlRQH09/ZsVZmNJA5kUbxIIkRWAQ+/okXPlYD/T1SzXscRj
	Oa6DydGaYml+W/2PP1uVhM5ZobDV3csaUoNYVb1GgxbmF5VieWkZjkOS7tJf5HIzUK9eKO5ac3v74
	1nLaJP6w749bD9MCrpcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEDzt-0004l3-E2; Tue, 17 Mar 2020 15:19:13 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEDzo-0004ja-9h
 for linux-nvme@lists.infradead.org; Tue, 17 Mar 2020 15:19:09 +0000
Received: by mail-qt1-x843.google.com with SMTP id d22so17754914qtn.0
 for <linux-nvme@lists.infradead.org>; Tue, 17 Mar 2020 08:19:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=BfzrF8b/EZdcIf7G+sSC1rUzeCq62k9NwB0quV5cf20=;
 b=Ia5J0N6jv9suXu2ShNnZ1etHlWkhm2x1YzrzD770kh/pZPf3iyQOefOENVRilPQUSo
 OlyIIuMi5zt18YcHqQgo48szEciCsL0wRyhigq72Gfv9v0c+zjPdkOHlNbhaa+aFqZry
 02XmtZVk9k5WrwSmom+f5INjfeUjLZZ14NiBa3GnVjMFji57GRSrg/hmx9bSFUysg8DK
 c6Bdl/0ZrigFrE0iuSAjIZ0oYjPVYudaMWjXjIv913cEuhxGk/FeNQ6GgoQBS2d550hW
 cl7VxM9XDFFzA6eQdDdP0C4MqWtFmdJRdQLdSnQAXUTag9V1Lcc1FpBKdikCSzlmav1I
 Bt0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=BfzrF8b/EZdcIf7G+sSC1rUzeCq62k9NwB0quV5cf20=;
 b=Jk+Cl0JFfdrMccZ50X1ivhYgNu453UeglAF6TbRweG0k45hsy9NaHyRtA/j0xaCWzo
 xXk/ozL3OGHuyCQnATJR0TavHN+ehUqYXeqpgKftQGV4d47wIs5ob+RQiCZ1V2B3Gp3L
 gPIbALZoizVKa8h5Y3DFHhv95Z4tlI1xNRBMXcJv6mxa/x2LezA6jPEQnjm3X2BJc8Tw
 gYtKunX9+Ao6D3GB2jMROeOhy/sANXOVSBcAxd0bG1HUx/ZkYr/vsOIuVetE/niPUL+n
 ivSe0j6LG+DazSvO4lwOdGo2dZlHA6BxmlZ0V7iXHbb+MZ43Tw5ntofYwYMXh8quT7m+
 kGiA==
X-Gm-Message-State: ANhLgQ3BjLSO8R5cR3HFQ4eCX2LpmZDA/8Krbh+j5KKCUPOTdG5EglAz
 6GD+4AzfmgeK/wqaYdO7hBk=
X-Google-Smtp-Source: ADFU+vtL/mvFInxC3k5sdjwKUeJqbhTW+2Vb5R6HTklqOejkfyHSGWpjkx7EIZ/vIn1EkWfIy/qzwg==
X-Received: by 2002:aed:34e6:: with SMTP id x93mr5892427qtd.194.1584458346844; 
 Tue, 17 Mar 2020 08:19:06 -0700 (PDT)
Received: from anon-dhcp-153.1015granger.net
 (c-68-61-232-219.hsd1.mi.comcast.net. [68.61.232.219])
 by smtp.gmail.com with ESMTPSA id 128sm2080034qki.103.2020.03.17.08.19.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 17 Mar 2020 08:19:05 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH 4/5] IB/core: cache the CQ completion vector
From: Chuck Lever <chucklever@gmail.com>
In-Reply-To: <20200317134030.152833-5-maxg@mellanox.com>
Date: Tue, 17 Mar 2020 11:19:03 -0400
Message-Id: <448195E1-CE26-4658-8106-91BAFF115853@gmail.com>
References: <20200317134030.152833-1-maxg@mellanox.com>
 <20200317134030.152833-5-maxg@mellanox.com>
To: Max Gurtovoy <maxg@mellanox.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_081908_340670_84669DC7 
X-CRM114-Status: GOOD (  17.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [chucklever[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: loberman@redhat.com, bvanassche@acm.org, vladimirk@mellanox.com,
 idanb@mellanox.com, linux-rdma@vger.kernel.org, shlomin@mellanox.com,
 linux-nvme@lists.infradead.org, leonro@mellanox.com, dledford@redhat.com,
 jgg@mellanox.com, Oren Duer <oren@mellanox.com>, kbusch@kernel.org, hch@lst.de,
 sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Max-

> On Mar 17, 2020, at 9:40 AM, Max Gurtovoy <maxg@mellanox.com> wrote:
> 
> In some cases, e.g. when using ib_alloc_cq_any, one would like to know
> the completion vector that eventually assigned to the CQ. Cache this
> value during CQ creation.

I'm confused by the mention of the ib_alloc_cq_any() API here.

Is your design somehow dependent on the way the current ib_alloc_cq_any()
selects comp_vectors? The contract for _any() is that it is an API for
callers that simply do not care about what comp_vector is chosen. There's
no guarantee that the _any() comp_vector allocator will continue to use
round-robin in the future, for instance.

If you want to guarantee that there is an SRQ for each comp_vector and a
comp_vector for each SRQ, stick with a CQ allocation API that enables
explicit selection of the comp_vector value, and cache that value in the
caller, not in the core data structures.


> Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
> ---
> drivers/infiniband/core/cq.c | 1 +
> include/rdma/ib_verbs.h      | 1 +
> 2 files changed, 2 insertions(+)
> 
> diff --git a/drivers/infiniband/core/cq.c b/drivers/infiniband/core/cq.c
> index 4f25b24..a7cbf52 100644
> --- a/drivers/infiniband/core/cq.c
> +++ b/drivers/infiniband/core/cq.c
> @@ -217,6 +217,7 @@ struct ib_cq *__ib_alloc_cq_user(struct ib_device *dev, void *private,
> 	cq->device = dev;
> 	cq->cq_context = private;
> 	cq->poll_ctx = poll_ctx;
> +	cq->comp_vector = comp_vector;
> 	atomic_set(&cq->usecnt, 0);
> 
> 	cq->wc = kmalloc_array(IB_POLL_BATCH, sizeof(*cq->wc), GFP_KERNEL);
> diff --git a/include/rdma/ib_verbs.h b/include/rdma/ib_verbs.h
> index fc8207d..0d61772 100644
> --- a/include/rdma/ib_verbs.h
> +++ b/include/rdma/ib_verbs.h
> @@ -1558,6 +1558,7 @@ struct ib_cq {
> 	struct ib_device       *device;
> 	struct ib_ucq_object   *uobject;
> 	ib_comp_handler   	comp_handler;
> +	u32			comp_vector;
> 	void                  (*event_handler)(struct ib_event *, void *);
> 	void                   *cq_context;
> 	int               	cqe;
> -- 
> 1.8.3.1
> 

--
Chuck Lever
chucklever@gmail.com




_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
