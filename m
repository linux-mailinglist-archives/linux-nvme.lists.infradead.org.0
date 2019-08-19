Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A8C94D52
	for <lists+linux-nvme@lfdr.de>; Mon, 19 Aug 2019 20:58:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=k2XEPNzEWJtmUJNMg6JofqeQC8+ycfc2T3WViEZidw4=; b=Tf62vLMVWh3+lcmGtQewcuYr0
	QXAGxoZVVKI1k0RJBsNd933fo8UkqNGUtln2yRHG8bjfXT2Hi5yRtH8pN18aRDOastif7yI3qUqzs
	eXZ/KIMYd7zrtKbipf7Lycab5yGXf5NNc7HsDomFv2uTpSxbIBJJR9V9LALQjoRHdQe635s6/WSr8
	U0wPwfO7ezb2yJhgAvbEC4RCVkrNQfWurdkjGR9IxcvT/pOoS0wM4jsSHhbyHxoazvLO/jUds5fy4
	jVGdlOSyHWaBurmIq3CMhQwzP8SrVZ2v9GUOs0sAXOsi2aDGIx9Sw59zE5G+FQEk1Gd+RQesUB1XE
	R/dG1c58g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzmr9-0003PH-3W; Mon, 19 Aug 2019 18:58:15 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzmqs-0003On-Mk
 for linux-nvme@lists.infradead.org; Mon, 19 Aug 2019 18:58:00 +0000
Received: by mail-oi1-f194.google.com with SMTP id h21so2133013oie.7
 for <linux-nvme@lists.infradead.org>; Mon, 19 Aug 2019 11:57:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=epBwfbywhqGj6/Txp0wEnIqhhkUDSBU1c4DDd4zaWhE=;
 b=exv+n4WtrMxWj0nsVdNpJuEYO1Md6gCDsucm+2M/jBmpXWzDb7l7RH/FN8dF+mRSFp
 +yN6ioTnVdxVm6zYw5mekeKARz0pN2I2L42cGGJNGiYCZFiS+28YQ44q0XDCYhqTqUTD
 EW06E36M7GhrfMNopSO5IhYNvkgJ/Bij8NIwF/ns8DSD7WpOHiQ42DWCUdJ5vISCMGYV
 HyTmFkqcSLsYkbceEEjZ4oQl3OAxaMy06iwc5c4Rn7XMFfBTDGLeD8Tw0Ucyrhkap8/g
 6n8BDox8UXYCCt8rc0KIlmwuhcuUzjxvE76AzhgS4TNTUaPmvxS8DA1mDK/xCWaTJvP8
 gRTg==
X-Gm-Message-State: APjAAAWrfeU3Qp8AtM/rtledPKeHQCR4qkzIjxG5++7SrTG4rvmQtW32
 YFvyC6enhJYLayIxgvZ53tqR8GpE
X-Google-Smtp-Source: APXvYqyPxFwJuZH9ewhvaT43uWW7EVT9DpjXXfGo8Fo4ATfdTuU3+8Znf78pYmMPzOvs6K6TZUjYCA==
X-Received: by 2002:aca:4813:: with SMTP id v19mr1919384oia.17.1566241077612; 
 Mon, 19 Aug 2019 11:57:57 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id 98sm6073398oti.18.2019.08.19.11.57.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 19 Aug 2019 11:57:56 -0700 (PDT)
Subject: Re: [PATCH v3] nvme: Add quirk for LiteON CL1 devices running FW
 22301111
To: Mario Limonciello <mario.limonciello@dell.com>,
 Keith Busch <kbusch@kernel.org>
References: <1565986579-10466-1-git-send-email-mario.limonciello@dell.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <b4456ee7-6f5d-5968-2167-9900f049e5c6@grimberg.me>
Date: Mon, 19 Aug 2019 11:57:55 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1565986579-10466-1-git-send-email-mario.limonciello@dell.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_115758_751484_C1125395 
X-CRM114-Status: GOOD (  14.66  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Crag Wang <Crag.Wang@dell.com>, sjg@google.com,
 LKML <linux-kernel@vger.kernel.org>, linux-nvme@lists.infradead.org,
 Jens Axboe <axboe@fb.com>, Ryan Hong <Ryan.Hong@Dell.com>,
 Jared Dominguez <jared.dominguez@dell.com>,
 Charles Hyde <charles.hyde@dellteam.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 8/16/19 1:16 PM, Mario Limonciello wrote:
> One of the components in LiteON CL1 device has limitations that
> can be encountered based upon boundary race conditions using the
> nvme bus specific suspend to idle flow.
> 
> When this situation occurs the drive doesn't resume properly from
> suspend-to-idle.
> 
> LiteON has confirmed this problem and fixed in the next firmware
> version.  As this firmware is already in the field, avoid running
> nvme specific suspend to idle flow.
> 
> Fixes: d916b1be94b6 ("nvme-pci: use host managed power state for suspend")
> Link: http://lists.infradead.org/pipermail/linux-nvme/2019-July/thread.html
> Signed-off-by: Mario Limonciello <mario.limonciello@dell.com>
> Signed-off-by: Charles Hyde <charles.hyde@dellteam.com>
> ---

Jens, can you please rebase for-linus so we have the needed dependency:
4eaefe8c621c6195c91044396ed8060c179f7aae

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
