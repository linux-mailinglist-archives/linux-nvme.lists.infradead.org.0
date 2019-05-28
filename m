Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B3A22CFC4
	for <lists+linux-nvme@lfdr.de>; Tue, 28 May 2019 21:49:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JX+Fuz12sbMVlmAFSkUzVFV5qxIxo3wCDExfEiAAwf8=; b=cd6q3/NwwJJD/cRY2R9jnawHZ
	KiFDahSC2PAOHWILkiTGJ0ac3v5b6z9p5zAEoGQQcEdBGniKBLIJnUbex/z6LH7Mzonp3wKcVSvMY
	uCGlJSN27zNKA4RkxGeFtvgQ1wWdqPRu20YlQ9z0vB+z6s7fc2eq5YIhq98Wxbq1cfxDYonwCWfVD
	yXU5//jrJEX2CgPat8eWopHEUmAoo6ogd+zwHQozph/DZwV1qz66fUaQxc+FqfRtWRcAy+Y0Uiz7J
	EIFgo9gA3snGp5uNWrmj8sDwJwf83G1QcXSvRntB+XXEkDmq5633XuAVhih55j2MCQr7OLAAVZq8s
	KUDB9OOrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVi5p-0003PM-8A; Tue, 28 May 2019 19:49:05 +0000
Received: from mail-pf1-f195.google.com ([209.85.210.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVi5k-0003Ox-HM
 for linux-nvme@lists.infradead.org; Tue, 28 May 2019 19:49:01 +0000
Received: by mail-pf1-f195.google.com with SMTP id c6so12121354pfa.10
 for <linux-nvme@lists.infradead.org>; Tue, 28 May 2019 12:49:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=7in3th1i9nKJ9YnK5e4eZB9OYVc7RlA3WCabewxFM5M=;
 b=IlAdulIVsMvSNPKZYYiy63mu1b5v3N1mvSZW3ta6cuKcuOX8Pahv+WL7/anuNMOiTZ
 Nu37urfUYTRSI7AEMSpTyOMGotVpY3UusKQnGPmzpNoSdB4i1Rwt2MCJA++Da5aW//w/
 qoSEmz3b3WjyCyRL7nglkxu8zEo09rBTKRys6Np9Nrd6EbBSoX+561t+wB+B037rgcSU
 aqV7yQ6G4RtHTaG4FRfwWDK00i+8NHioVfB/XNhaY5zirIfZqOgD87RNkYDbSGECjlhZ
 kflbnYHitP6iLTcim0jtPQhr6BA/34Q2clqQlFTLMsISrqk87btYdcjzUAg8naPL9p1U
 mjNw==
X-Gm-Message-State: APjAAAWmx7+VK3wIJlVinoMtx7xpfbTiahalkJlTJw7MzgL+gD8tVBHr
 12gFBdsBMskUmPOnWCQJjkqjyWNTcXA=
X-Google-Smtp-Source: APXvYqyHjTuZi3zBxsnWw63nnFFf46K2yEk88O+zspNkluDfecwmqjGG0Kq7UWBv8jTIOFy6ZsBN0Q==
X-Received: by 2002:a63:5342:: with SMTP id t2mr32030619pgl.410.1559072939669; 
 Tue, 28 May 2019 12:48:59 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:d85c:2df7:72d9:ea63?
 ([2601:647:4800:973f:d85c:2df7:72d9:ea63])
 by smtp.gmail.com with ESMTPSA id 127sm16415292pfc.159.2019.05.28.12.48.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 May 2019 12:48:59 -0700 (PDT)
Subject: Re: [PATCH 6/9] nvme: update list-subsys command to show the entire
 list
To: Max Gurtovoy <maxg@mellanox.com>, linux-nvme@lists.infradead.org,
 kbusch@kernel.org, hch@lst.de
References: <1558951310-31066-1-git-send-email-maxg@mellanox.com>
 <1558951310-31066-7-git-send-email-maxg@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <0004494a-67a0-c010-5de6-fa66dcafff68@grimberg.me>
Date: Tue, 28 May 2019 12:48:57 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1558951310-31066-7-git-send-email-maxg@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_124900_575479_A508C98C 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.195 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: shlomin@mellanox.com, martin.petersen@oracle.com, minwoo.im@samsung.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> Make it similar to "nvme list" command. For that, remove the
> unnecessary ana_state parsing (was introduced only if specific namespace
> handle was given).

No, this is useful! You're arbitrarily removing useful information from
the display...

nak from me on this one...

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
