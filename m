Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9218B3B549
	for <lists+linux-nvme@lfdr.de>; Mon, 10 Jun 2019 14:55:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p8Rb5UwkFV6VnfS+Zn1bpAO1Q6qag6gN8Ad5WRdz+AE=; b=S5QKF3u59id7oT
	6yHFTgCcNDuJH6yMOMOlFhHqwcfPxPnvCUeabSP2Q4gHCq/kcDkxwSp8Mo9wyaycjan93ycGIR3VL
	bfQdrVgtufC1EZqgLJcpeGAMaF0uFFehzi28M34R7bQutj0COySNwqlzhCLTfD2k+SeSgoko0j5yC
	J/5D8nUC5lS+jCR0mCyWBi9g1emAw+r2b1c+G2EXkdRlbUXpdjV1z24+NSASbJ9/hP4gvbezXk8JC
	UuCn0TDI5MmVRwu2yMVvK9vcdopkVs66AGFoEHt8xONeliu68QiF1XFGPvnSPY5P1bxp2P+UBt5HX
	tPPxNY8OEHQFZbm4ZyIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haJpf-0002UZ-25; Mon, 10 Jun 2019 12:55:27 +0000
Received: from mail-pf1-x433.google.com ([2607:f8b0:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haJpV-0002Ti-8o
 for linux-nvme@lists.infradead.org; Mon, 10 Jun 2019 12:55:18 +0000
Received: by mail-pf1-x433.google.com with SMTP id p184so1977196pfp.7
 for <linux-nvme@lists.infradead.org>; Mon, 10 Jun 2019 05:55:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=/O1Ehh+JpvyTEAwPq4Vy0RylauXdZToit43snEa3RQk=;
 b=ncUskab/2GDyptmEzqjwU3BYZ9DXKV75k8jiRDdUbWnphlIIFsJqC9tYyevcBjJMe7
 jX+x2Df5AMaexiSQwuuxPMU8rCPT4DgO+jdd0uL2NWZHXc/DtBKYKIUP7+L80EjLRY8A
 I+MqTXnyskUYDw9MCEo561YNT4ytQcFxQxbF/l/yT+YOGZM2+G/QriS4NqU04mhbC3AH
 icKS0Dg+2yydFwtRijTdv/ZHI+sJnZ90jhu/qgTby1epAnRFLSjlSo+Ax9LKqQ0rcBLK
 suxllBrrPgUw6b+szD10otpCPfpb+HCyovAtjlh5yqRyfWfzkpxIc/wMJQ/IB3XlvwgJ
 Dbxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/O1Ehh+JpvyTEAwPq4Vy0RylauXdZToit43snEa3RQk=;
 b=FHFWSteCYgiJDojb5JqmBPjGliPmlKREqrO8KKVMiHBd+40TKB6b+uHsczjPif4+c6
 iP3eQMYZCct2CjL/dGfnbYYn59f2LQec1TAJ2ZJj/2nKSaGDzhl8wA0PA9wWaJ7vqo6D
 MawKMbjV5V7mMB4WuBDv5VsxrkcymyUxGBqS5B2bexLHpVMXqovlpz3N9RnlIvmrISWX
 lS7NfbpmgJnced8Hk959+UyFzIngal3s4loFLSTGhPsYblJ4hYlwiSCDoSWyRw7xv9FD
 tfR/TFmDDC3Uso8qoLIsEwUkcoraUdh7+X6ybMZrlfOWkr//vB2ZKpeT+E4C0wtgUzId
 SpcQ==
X-Gm-Message-State: APjAAAVNVv2jxLTyf5vSiyR+6xshvOXTMApIGrXvQZArAIFagXJ5coEC
 T2ZOjujZlEkHsE2tRmBhW2REgqTIP9Y=
X-Google-Smtp-Source: APXvYqwTd5tGN6rzrMbglp89zRqGDnTJDx78oduYLMjaJeCXhXcTRb4l2VaWlUcY4wXnwDJVc+u8Sg==
X-Received: by 2002:a17:90a:380d:: with SMTP id
 w13mr20840637pjb.138.1560171316118; 
 Mon, 10 Jun 2019 05:55:16 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id d13sm2724644pjs.32.2019.06.10.05.55.14
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 10 Jun 2019 05:55:15 -0700 (PDT)
Date: Mon, 10 Jun 2019 21:55:12 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: Re: [RFC] mismatch between chardev and blkdev node names
Message-ID: <20190610125512.GA20915@minwooim-desktop>
References: <20190610124925.GA20319@minwooim-desktop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190610124925.GA20319@minwooim-desktop>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_055517_332986_72CFE1D1 
X-CRM114-Status: UNSURE (   6.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:433 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

(+ Added maintainers to CCs)

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
