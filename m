Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C8F01B1F38
	for <lists+linux-nvme@lfdr.de>; Tue, 21 Apr 2020 08:51:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EU0HaiBfapmY2Tkza0Xij1ESmsIMrC3DPEmw2sGuHTE=; b=ZppSb5fZ0TW9pg1ZInVnm8v0v
	N0NDei/lCWjQamlv7sAhd//jBP3imgpJ+qKLqo1OMEAYScj3GaoDfxFRTMly63MEi4Erw3a+532bm
	Zc3xw/KSUToCB3MiWSdBn7++F+JUuXZT4sRgYku+Wi6B7HqirmBNL7uLwu0vV2tvt59zYik65hLUt
	LySgGeg5ZT0ZY7mVglniyrserPHdt1deajaiJ+uqBeFGC1QIU0AIfqBMAcLGTwew15xM7A2Tz/Fos
	MTGWz83EhW1uIanlbWX3G9ZdXm5Ghe7skvutYCImVSqGB1Wyv4cYIIjbP//wyF/SHGagxwgmvviOJ
	m59dHK/IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQmkE-0004wv-Lp; Tue, 21 Apr 2020 06:50:58 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQmk9-0004vv-RA
 for linux-nvme@lists.infradead.org; Tue, 21 Apr 2020 06:50:55 +0000
Received: by mail-wr1-f67.google.com with SMTP id t14so15079133wrw.12
 for <linux-nvme@lists.infradead.org>; Mon, 20 Apr 2020 23:50:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=r/GRNphXS0OX+tPDUFp4R9hzgWz3+xYIsn7uwbptAIg=;
 b=fqmoVvlvKfu1gXY/PISn4Ml7j1r4t24rryMGXgaCis6QvFoaRRP66t3xmi1TlLFLU1
 tEcGWCrBD18kVqe/8gdko9p00lz5HsSuj7uWY4cUbAe/zfPA/53yAzc0QlaDjnVe3MJH
 8wlWCIQzO7dkIIQPtassItsnwmSqor7tMacHUa5MwrWi9JsGusNuLKSSsZFvt7VFF8+L
 rJyH2S2AMKb5SWWZ3SA3Zkg55oh+51NCE1fGqiUUKjteiAf5aj8GYRPuCI8lfgXq8T8i
 8Fy+UnKBaJHf5GX26SEhBdumV62nXD3gUn9MNox1bmGVDJkK28wHu6yxqueoHcyLtWmn
 vWDA==
X-Gm-Message-State: AGi0Pua247AbTqyyOGAbhPkzTQjKp6Zkf/F8Ws72i7p939QbcgiknbnX
 iFTcNVDMs77FlmEI5roIgNI=
X-Google-Smtp-Source: APiQypIFI5jvJ996opkKsx+IGiqbmSbhza30P4hoiRyXPXlP148WSjJTpoWrLkl88Tb3MoDoFkjIoA==
X-Received: by 2002:a5d:400f:: with SMTP id n15mr22490736wrp.344.1587451852043; 
 Mon, 20 Apr 2020 23:50:52 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:d4f0:54a7:68bc:1947?
 ([2601:647:4802:9070:d4f0:54a7:68bc:1947])
 by smtp.gmail.com with ESMTPSA id v131sm2282526wmb.19.2020.04.20.23.50.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 20 Apr 2020 23:50:51 -0700 (PDT)
Subject: Re: [PATCH v12 7/9] nvmet-passthru: Add passthru code to process
 commands
To: Logan Gunthorpe <logang@deltatee.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org
References: <20200420164700.21620-1-logang@deltatee.com>
 <20200420164700.21620-8-logang@deltatee.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <e1883123-3b2f-4ade-a824-264ce3ca6d11@grimberg.me>
Date: Mon, 20 Apr 2020 23:50:47 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200420164700.21620-8-logang@deltatee.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_235053_882818_E7FDEC36 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
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
Cc: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Stephen Bates <sbates@raithlin.com>, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Max Gurtovoy <maxg@mellanox.com>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This looks good Logan, thanks for doing this.

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
