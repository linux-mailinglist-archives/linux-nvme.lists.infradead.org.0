Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6736EBBA21
	for <lists+linux-nvme@lfdr.de>; Mon, 23 Sep 2019 19:04:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4DAPRNDe8WN4TzSJDzT+UmdzNL3bwVtvxQYVdee0riI=; b=KpD+yuEU6pUp1fs58Pwo3Nmid
	IwsFH4g54Set7mxLQfIIW9u0U6hYDQp5ruZDfVd/erdc3hH0OpsxaT9WuUk2xk6y8sz7K5XmOviYn
	4xT2DyAjW9bNtqnLO72hw9vaVmab433frQLhRLBqdO9nn+dSvUt9lN2ai4WOs/hlcBzT1J/CSBOj+
	qbJc6wYzw7CXbULlIwUk6zFqXGpkszo9mWZ53KrBGoYgKHPArL3Cd8NPGGQOYGEATRe4imJaejcOE
	ll1wYIDgSWvc1LCal8g2/Pjs9nvwru02TLmpg0Kkytyo7R+MbdvRYsT+wAbPoIkKLuCFmDPoeG/Yi
	b7G/ddZww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCRlJ-0005gL-PI; Mon, 23 Sep 2019 17:04:34 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCRlC-0005fs-Jm
 for linux-nvme@lists.infradead.org; Mon, 23 Sep 2019 17:04:27 +0000
Received: by mail-wr1-f67.google.com with SMTP id l3so14815716wru.7
 for <linux-nvme@lists.infradead.org>; Mon, 23 Sep 2019 10:04:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=sD2ig3x1fQR4ys0Ws3FFIb0hQLYw7/HAz1qPsvdVPGU=;
 b=OFq+fDA6X1oUoM5Z9L9dxRu49eqk28m4IVPglCs/7NYdB+uw+TAmQT1SZ+PmWLO8th
 1sYkq7w0/9RsH3/RjBGejh1VGwJh4qI8aJPPoOrP74tPvUD7n+DLDT54PIpjIgPwnAIJ
 GOKyU3CoDb2oQlAaiPzjIccYBgRGoze/QUuhyoVxysMYg7+k4FLykWIrE8fXSgfnhhQe
 /51WgeK1lfWnzUVUJmeGN1URCJ8mWL78LnIb8vpgDh6EhtWiDzpPnV2nzkD/5GndZyJU
 HijphqI6W56GAX467MnU3CFL4MaJT8F5HwnXQrm0cqFuEiOgK3agmRTlRJY1fdTL3B4n
 15wQ==
X-Gm-Message-State: APjAAAXrbLNuJhMpJyla9/8lFQaw9GlKlGH8NlLEHUWgW8Ym95VP8Tg3
 B4Wy3cCCzdbQFBql7OTxlxQ=
X-Google-Smtp-Source: APXvYqz2Mxpdd4XkbJQDBM+YTd9pWCMGm5GIBIDTelC6o41yckgh6JmWlUBAhjhnFPMsk9JOQs+KuQ==
X-Received: by 2002:adf:dc03:: with SMTP id t3mr367650wri.27.1569258264426;
 Mon, 23 Sep 2019 10:04:24 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id v11sm15752273wrv.54.2019.09.23.10.04.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 23 Sep 2019 10:04:22 -0700 (PDT)
Subject: Re: [PATCH] nvme: set NVME_REQ_CANCELLED flag when cancelling a
 request
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
References: <20190920181913.14723-1-sagi@grimberg.me>
 <BYAPR04MB5749B6AC6EE50BEC6C63D213868A0@BYAPR04MB5749.namprd04.prod.outlook.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <140c41d6-5e9e-609f-0592-a5014ab67ee8@grimberg.me>
Date: Mon, 23 Sep 2019 10:04:19 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <BYAPR04MB5749B6AC6EE50BEC6C63D213868A0@BYAPR04MB5749.namprd04.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_100426_653991_3D2E18A6 
X-CRM114-Status: GOOD (  16.98  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> There are couple of places where we explicitly set the
> NVME_REQ_CANCALLED which is followed by the call to
> nvme_dev_disable(). Since :-
> 
> nvme_dev_disable()
> 	blk_mq_tagset_busy_iter()
> 		nvme_cancel_requets()
> 			
> with your patch nvme_cancel_request() will duplicate
> NVME_REQ_CANCELLED assignment, we need to avoid duplicate
> assignment. Following patch is on the top of yours, please
> have a look :-
> 
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index 6447702..4c71bbd 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -1286,7 +1286,6 @@ static enum blk_eh_timer_return
> nvme_timeout(struct request *req, bool reserved
>                            "I/O %d QID %d timeout, disable controller\n",
>                            req->tag, nvmeq->qid);
>                   nvme_dev_disable(dev, true);
> -               nvme_req(req)->flags |= NVME_REQ_CANCELLED;
>                   return BLK_EH_DONE;
>           case NVME_CTRL_RESETTING:
>                   return BLK_EH_RESET_TIMER;
> @@ -1306,7 +1305,6 @@ static enum blk_eh_timer_return
> nvme_timeout(struct request *req, bool reserved
>                   nvme_dev_disable(dev, false);
>                   nvme_reset_ctrl(&dev->ctrl);
> 
> -               nvme_req(req)->flags |= NVME_REQ_CANCELLED;
>                   return BLK_EH_DONE;
>           }
> 
> If you are okay I can send a separate patch on the top yours.

That is fine with me.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
