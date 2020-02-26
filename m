Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67858170C5F
	for <lists+linux-nvme@lfdr.de>; Thu, 27 Feb 2020 00:11:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z1fMvao11i+d0UZrbIxXcd2/3fEWA/mH8uzwOCutGXo=; b=MI3gNkIncmtx/vOwpURWJ64zb
	GZD/Xv2qAydiRagXcRhMDyBBZdacqv2YQQhK6r3bjysnv9cwu8nVWKacn0eU2XWdLB+S/4ZmgGvdl
	pLxm6h4uKyGlgovySdumQNV/wJ6SE1e0lkvAyvv1iU5dKmDjyXw7jc7kFzp6eE/TKFJlGs8+rBuZg
	irnhc2E2jkqaEUorbWxkH3TXbxDQB4iV/YCyo2jElsU89oBtSkC5xrxSX9k7hOAtzGPS78yNymCXz
	fkrrT7+TMopnSXK++yo6MsIiYOCE3ryaSRjZ3XL8hOtHM6lW/Y0hSeOAdK8EuQEbZciOxkPXx6cLC
	gwP7JY6MA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j75pk-00009R-En; Wed, 26 Feb 2020 23:11:16 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j75pS-0008Q3-8y
 for linux-nvme@lists.infradead.org; Wed, 26 Feb 2020 23:10:59 +0000
Received: by mail-oi1-f196.google.com with SMTP id c16so1367239oic.3
 for <linux-nvme@lists.infradead.org>; Wed, 26 Feb 2020 15:10:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=c9LPtf1gLSLdMVojAjm4UHY09saSl2K8AclC1Zp4WUcppD4q2VixePKHn3fMqQrvPn
 kt5FmTGZUq6slYU5h1dtKo7B+BjeFpFqKWsEh0a5n37z8qPjvu5wvJ/97wW4fiM1KHkm
 dd6j7cv4KnCU4WT8KGER9ndvPqqHcz9glnvaYQonPZPPir34diA7sxYC/dZ9J4O8SPF8
 otq38EqBroE9dsIsR7xoXyQybGYdXf41ghO/pqpdi2VDo1kepMkdkFSiqP9TFM5y1c7G
 1IdL7r41jpDp33zM+FsCCD+3zv5QLEcurF9GQ4mTMiAJUB235UpPJ+WouzQeyOp7w71R
 M4pA==
X-Gm-Message-State: APjAAAXpDzoBEZK8or7rDgFRvoia13LSZsfIc7dm1ud81Ona7rGBn/mT
 Di2++sPIyUh0F6Do/kt3dIg=
X-Google-Smtp-Source: APXvYqzFFaZnvuDMnLAnxgWtgqkbNHcFeK+i8qkfD0Kv/zYfIHC7sD29HRx/eDwD6eIQZAV6h3GE/w==
X-Received: by 2002:aca:3f43:: with SMTP id m64mr1069015oia.165.1582758657360; 
 Wed, 26 Feb 2020 15:10:57 -0800 (PST)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id z3sm98874oia.46.2020.02.26.15.10.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Feb 2020 15:10:56 -0800 (PST)
Subject: Re: [PATCH v11 3/9] nvme: Move nvme_passthru_[start|end]() calls to
 common helper
To: Logan Gunthorpe <logang@deltatee.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org
References: <20200220203652.26734-1-logang@deltatee.com>
 <20200220203652.26734-4-logang@deltatee.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <b39e6dee-1175-64b7-61e2-27a25bb93d97@grimberg.me>
Date: Wed, 26 Feb 2020 15:10:54 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200220203652.26734-4-logang@deltatee.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_151058_344583_5917CBCD 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
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
