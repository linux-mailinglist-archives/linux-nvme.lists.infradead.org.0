Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 084E2FE3E
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 18:58:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lhVhQn9JssrDcoVqPJe/6O6heIaGP8KsyTc+dFeoIVE=; b=PYjjn6YDPiRlXQ
	uJhSihHRil2IowK165jyEbzcyPsKdpDww9MN5jEOzpugFPaYOyA3lg0VGRRPBSg5PdUPqFJ0ySlmC
	FUSMls7mstXoSKGDryzlTiLFd/VNXiyDuSxk+oU4IaI/QkuS90Cef0y8O6G0UmNsCC9+uEAec0Pd8
	cuTUA/0lv4SGoSOyw5mA1+6t2j1s6mjSLmHKs2BJLLWZlX/9m0GU0/WLxxdHpPSnpUMZWepN59Rev
	MNWmq8mNkR155AyL8anSkj0hGcP8Juku7r6nxGxXSdIk4Zis4gOEdz5t5bLGp924XVbs4VlMKXMod
	7pUa8LywXohyQ4ch//Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLW52-0000ee-LI; Tue, 30 Apr 2019 16:58:08 +0000
Received: from mail-pf1-f195.google.com ([209.85.210.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLW4w-0000eF-Vz
 for linux-nvme@lists.infradead.org; Tue, 30 Apr 2019 16:58:04 +0000
Received: by mail-pf1-f195.google.com with SMTP id t21so7366251pfh.2
 for <linux-nvme@lists.infradead.org>; Tue, 30 Apr 2019 09:58:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MbC9G2YxOjALmS4GOzWQlgQ9ChGH8ykGKgdEmUc+cgE=;
 b=V6s/XDiUte4aav/BiPjlo5DovqYSoFJUtyR9T3VYdjTrOiWrHWQXFcutaWyeOZuIjd
 zMHNc9fTSSiM7TI7I/EXmAjHTcE9YOsWuWH1BM/Zp6jB1u8kISRbZQ2j5LSXJyG9q7zq
 C+lEQNGD/UBQ5J4Pja6IvxANTnClmB8rJ5i4Y001wn+acPnjgwU1H227+zeyZqNJyfL4
 +E37PWuhwPWL5ZTvz/xGJPcApS2UgngqmyB4IVztqpWYs1DDNbHxWSGCZ4Wlzz3/Qy6E
 N6KEBcrVwDylrkYGtDFzuRU2muCpPyQvKhVtpOWKYRJ30uZfAR37yTrnzlMRJWwoaaEG
 a7qw==
X-Gm-Message-State: APjAAAWnURpLndgOEuSWRRvQuYenQ1umhGMoUX4EjquDdDFc5ZB8Agmv
 9inse6cojhO3sL4hGPf1TKg=
X-Google-Smtp-Source: APXvYqzXiQ2B1XUa2xrXuh4WcjaJ9IKYSedhOn8LT97qSOfwsQA6k3x7uc9mMZ9ckG2o4EOHtyYDYA==
X-Received: by 2002:a63:dd02:: with SMTP id t2mr51767267pgg.434.1556643482179; 
 Tue, 30 Apr 2019 09:58:02 -0700 (PDT)
Received: from ?IPv6:2620:15c:2cd:203:5cdc:422c:7b28:ebb5?
 ([2620:15c:2cd:203:5cdc:422c:7b28:ebb5])
 by smtp.gmail.com with ESMTPSA id q128sm54730747pga.60.2019.04.30.09.58.01
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 30 Apr 2019 09:58:01 -0700 (PDT)
Message-ID: <1556643480.161891.172.camel@acm.org>
Subject: Re: [PATCH 1/2] nvme: move command size checks to the core
From: Bart Van Assche <bvanassche@acm.org>
To: Christoph Hellwig <hch@lst.de>, keith.busch@intel.com, sagi@grimberg.me
Date: Tue, 30 Apr 2019 09:58:00 -0700
In-Reply-To: <20190430153833.9011-1-hch@lst.de>
References: <20190430153833.9011-1-hch@lst.de>
X-Mailer: Evolution 3.26.2-1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_095803_025385_47BFB4DB 
X-CRM114-Status: UNSURE (   7.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.195 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.195 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, 2019-04-30 at 11:38 -0400, Christoph Hellwig wrote:
> Most command aren't PCIe specific, so move the size checking for them
> to core.c

Reviewed-by: Bart Van Assche <bvanassche@acm.org>



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
