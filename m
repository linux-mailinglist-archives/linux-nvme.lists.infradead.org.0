Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 955751F1244
	for <lists+linux-nvme@lfdr.de>; Mon,  8 Jun 2020 06:42:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z1fMvao11i+d0UZrbIxXcd2/3fEWA/mH8uzwOCutGXo=; b=nMDXGym8C33mYw9dQ0eypZid8
	TJr8vg+LzZ4bkPXYl/xhOchKV077T2zAdZ8QzXukBRlkaU40+fNG7ReUVWiSofcGXurIDCzzlZmAd
	9YQJvwoXvPm5RxXInBZq2exfrZdd1KzwfPUYXjwmIIM294TZOLdASN+lMde6CmdNRwMjyIvFcH3Rf
	eOSg4mOmGskJhVBamjQfs564C134+g65rDEegzof4WmsNCVKWWx0rHorFOcn0UKFPcCkOy3FLXVw7
	FJ4yTscU0vMSukJD/5ROG9Ue08ZLvC+MuiiICRkDaAKolg+kK1CAW3uW2Fy9k/qLq0Z3FTkoeZQCD
	1QcsvfQXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ji9c2-0003u4-8x; Mon, 08 Jun 2020 04:42:18 +0000
Received: from mail-pg1-f196.google.com ([209.85.215.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ji9by-0003tW-6n
 for linux-nvme@lists.infradead.org; Mon, 08 Jun 2020 04:42:15 +0000
Received: by mail-pg1-f196.google.com with SMTP id s10so8227650pgm.0
 for <linux-nvme@lists.infradead.org>; Sun, 07 Jun 2020 21:42:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=ogpHN/ofDFxAhzd5rG6B7OVHFLiDpS3K7uVYruKfiyO7Xi/xMHtjutpsq0aTsoJ/T9
 /QI/LG5jZ7XNqO2u17iWewa1v9MwAnBmFpFXwhrPOJa6tigre6tpzfp4uIcH/6CKaEAb
 +sABifDAFDggvPIk5V1s50yqEvbre+NxcGH7jNlW0OchO+g6vTN0gqh7dwtq2HY7aB1Q
 IIaFzgqdNmgQT02Q3V04FAW0f2aYdc9Cr8DK7hEVJfPgSoN98sHc2nlhFaUxM5Mf6Ayz
 MZiqBUs68/nYJq9L/ikK1VwTrIh4HsbAK6LHXDyYqmKuqc4HOz4NzrwInapbOxV8RofD
 unEw==
X-Gm-Message-State: AOAM532CInTpGUiY5uJvQQaQxzpvFYzcO1FU9lasNIvtlemc06GB/aww
 Zdib35ZGkvGTyaV2iUJTG5hEbsAVov0=
X-Google-Smtp-Source: ABdhPJzK02RNz2PGm3x5D7KGjyZ+oukieutTm+MRazsKQULHulXca4whO7raBRwcl3Ae9h894E0Vug==
X-Received: by 2002:aa7:8a47:: with SMTP id n7mr19163268pfa.219.1591591333127; 
 Sun, 07 Jun 2020 21:42:13 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:5183:321c:38f8:ee16?
 ([2601:647:4802:9070:5183:321c:38f8:ee16])
 by smtp.gmail.com with ESMTPSA id 73sm4737103pge.15.2020.06.07.21.42.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 07 Jun 2020 21:42:11 -0700 (PDT)
Subject: Re: [PATCH] nvme: do not call del_gendisk() on a disk that was never
 added
To: Niklas Cassel <niklas.cassel@wdc.com>, Keith Busch <kbusch@kernel.org>,
 Jens Axboe <axboe@fb.com>, Christoph Hellwig <hch@lst.de>,
 James Smart <james.smart@broadcom.com>, Israel Rukshin
 <israelr@mellanox.com>, Max Gurtovoy <maxg@mellanox.com>
References: <20200607114520.130756-1-niklas.cassel@wdc.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <18b34afc-1c9c-e650-3836-cadf0b4a9fca@grimberg.me>
Date: Sun, 7 Jun 2020 21:42:09 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200607114520.130756-1-niklas.cassel@wdc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200607_214214_246382_93BE9AED 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.196 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
