Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08FDE5EF39
	for <lists+linux-nvme@lfdr.de>; Thu,  4 Jul 2019 00:43:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EnlpFBr4ldsEYdTWBNvHAUFVmiRjTr9fPn7cEHVgDLQ=; b=VeiYeU+bYFvMENom67Z2rU3oF
	qOD7uGaNEaarF7KTaZowekzztx7oVuUxAU21+G2sOCQoyAJU9P/XxhD53or2jJPvTdWj2isxjQUmW
	8ZUh6qyrTtfXy0Ju8HiBb0KyvVDfxbSux5ono42Og/zPj8dJsgfDCluwwTErwijXUVzMpulXnGMWe
	0BED4ybui9VvIop5GmdiG7AN0ECNZUf9cBPGi39rQ83UzfiEAx+TCCRLVli0RnWiE79qY0wlvdHFx
	x8yjIrf5jfJMVBEQk0uTi7MPVum3NnhBwU6latfoPG0OTMdIl2AgpWZm1CGbYoAdgyCMfJdaxVZ0h
	wH1nM1/OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiny6-0007ss-2a; Wed, 03 Jul 2019 22:43:14 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hinxk-0007oI-Cb
 for linux-nvme@lists.infradead.org; Wed, 03 Jul 2019 22:42:54 +0000
Received: by mail-ot1-f67.google.com with SMTP id q20so4113699otl.0
 for <linux-nvme@lists.infradead.org>; Wed, 03 Jul 2019 15:42:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=ewNCkwN+nkh5wvj5/50TGSlcM9VYr3/l716C9gcwBPBHTmCP4UTr7YYKtHwDhAW96c
 N+BEP2nbBhlyF8ZjmkAVGB4TDuN6ck+C4ll/336UYEc/7wkkOQmCElugoMxaLJXiTO5Z
 l/qtnsajRLbrJwpT0pOLCUALRqSTnctNkw2dzrrNoRQ8irf0DBkM5qb7GIUmb6UZIFDN
 R0Vsm2Ygc4VWvndE7E5Kv+SdOyEaTkTkJhlv00FwBkQp+8JmwGtmQFxbqQ9r6/KiZhwP
 woHmOyPb0SiHSqOJ8Z3NZbRHsfb/7PvxQxj1j6ekYoU5H8p353Xl7o5sBE3amgKlcLzc
 71dw==
X-Gm-Message-State: APjAAAVOrprScRb/3jA7P5H9PrSYibfBYjJYQy8z5KbAaQnuI37WGFbo
 raF0UpDsRrA7JJUOLrG6wvQ=
X-Google-Smtp-Source: APXvYqyWKDyTuGWAPUZMNSOWBEVoIEKtMZ1v+Ku8/9ZlybYYheSu5r4r7rsUFGJDGB+e6FB+PJAfnQ==
X-Received: by 2002:a9d:2941:: with SMTP id d59mr31820727otb.8.1562193771560; 
 Wed, 03 Jul 2019 15:42:51 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id y4sm1351089otj.56.2019.07.03.15.42.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Jul 2019 15:42:51 -0700 (PDT)
Subject: Re: [PATCH] nvme-pci: limit max_hw_sectors based on the DMA max
 mapping size
To: Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org
References: <20190703172700.16556-1-hch@lst.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <b634dbab-d67a-8e50-0d84-9619e797cc76@grimberg.me>
Date: Wed, 3 Jul 2019 15:42:49 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190703172700.16556-1-hch@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_154252_784840_7C1A43E0 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: Atish.Patra@wdc.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
