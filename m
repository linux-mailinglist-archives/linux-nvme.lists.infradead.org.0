Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92B001B1EFB
	for <lists+linux-nvme@lfdr.de>; Tue, 21 Apr 2020 08:48:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z1fMvao11i+d0UZrbIxXcd2/3fEWA/mH8uzwOCutGXo=; b=uKInXGgdlmadZR41wmCY/uzuM
	LlN4xvEjhaxO5Vn63W28aF6OZSvP4wc2NWuHbPBBkbmcIOP5vyzoXkUJxGCiiM8nw6Jj+/KS2unDF
	0SvIKb/uk2ZVOO9Jd5aSJTIB6FxQQDngbxQeiV04qlg6bygo8107RDIDlbKvun0K26aZRum8mqNum
	bMy4Fta411MlhEljUlk7YyrI5YVtIe+EwMmdKpHD3G5BDy7fb04DjwS8600aKBvwvh3R8vYeihZAm
	5K8ayQmFo0DSp0faJ1ogClM76tiCW2aScXE8n3EOfdmuXQ6KYS8O4zr4+FOEg98ngxNCjMBw7HOFr
	RP/3W+2Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQmhY-0001qw-4N; Tue, 21 Apr 2020 06:48:12 +0000
Received: from mail-wm1-f68.google.com ([209.85.128.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQmhU-0001qA-4i
 for linux-nvme@lists.infradead.org; Tue, 21 Apr 2020 06:48:09 +0000
Received: by mail-wm1-f68.google.com with SMTP id h2so2243895wmb.4
 for <linux-nvme@lists.infradead.org>; Mon, 20 Apr 2020 23:48:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=MGa0b9SYGku43xtSE/3DY2W0OeKQA+THjtufOs7HNYL+lAFFMpdcbPirxlTuKsLBoD
 AKYMSdMQYTVVQAEOnUbNQROpg14hm+CpNn3yaG6DyWxOMhwivBNLR7p/0Dto8Ciw+rVH
 FG0iouisRw9s1Jchy/Eds53kw/3owDZwZspZpOplGEPzjU9uKCL+2dC5EZRGuWVcDTCp
 xr6ndz2O9huIo+Q/Eh0kkG1+Lk5fphVMp/+sTzEem5fzDyU54FdK0haKUjD/DjhK+nxc
 T9pu3o2pkjkB/9qrkyY6+TDoUOSw1M6s4eCpjO4I1UGS6URCXBjwetm6VBN4T8d8eSwE
 zVwQ==
X-Gm-Message-State: AGi0PuawSdnsD6C7P/TZpDNNJplFAZMIOyG6iHs/pwyQWvmKkI3Xwb4V
 l2xH7TV0R9a4MP6yk7JyZYI=
X-Google-Smtp-Source: APiQypIGSNJv8r7Y3Pzy43DudQ/5nAvkOn3xIpJfBHpfk64L7Mff5dWrql9U2kJycOd775B74gR2Gw==
X-Received: by 2002:a1c:9d84:: with SMTP id g126mr3016814wme.184.1587451686268; 
 Mon, 20 Apr 2020 23:48:06 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:d4f0:54a7:68bc:1947?
 ([2601:647:4802:9070:d4f0:54a7:68bc:1947])
 by smtp.gmail.com with ESMTPSA id t67sm2342839wmg.40.2020.04.20.23.48.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 20 Apr 2020 23:48:05 -0700 (PDT)
Subject: Re: [PATCH v12 4/9] nvmet-passthru: Introduce NVMet passthru Kconfig
 option
To: Logan Gunthorpe <logang@deltatee.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org
References: <20200420164700.21620-1-logang@deltatee.com>
 <20200420164700.21620-5-logang@deltatee.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <8517ecb8-0ec4-07e6-380d-91db65660a8b@grimberg.me>
Date: Mon, 20 Apr 2020 23:48:00 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200420164700.21620-5-logang@deltatee.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_234808_183652_3EA5B9ED 
X-CRM114-Status: UNSURE (   8.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
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
Cc: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 Stephen Bates <sbates@raithlin.com>, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Max Gurtovoy <maxg@mellanox.com>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
