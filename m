Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27327170C69
	for <lists+linux-nvme@lfdr.de>; Thu, 27 Feb 2020 00:14:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z1fMvao11i+d0UZrbIxXcd2/3fEWA/mH8uzwOCutGXo=; b=FkS/PNhv5kljTsIPb080d8OQl
	JGUBEtATT3XmrC1/y+3ZPDsNO3b28O9PCmPhPndD0Cf/t9EE0N1u9Yt0/k4gUKSegpRn7nHV/fZVq
	qfaTPyRgN70AaPLeZ5Zed5DTQKE9i55eNGlCJu5orgYEBXbV0FLrT6ZocI4fTieauZR0mPP754qh/
	5EZ09rrwJpmqj3ku/kiBlZcok7zasKjH0yDEh9vvmx6v0GB4e1SoC2uvvO6e8EAqcfX/+kz6WUcuT
	50+pyHERnCzSlxg/RUnaKRjkh6wZKd5JRWUPa4LcDgw2Jt5dHtHi1WGvUnG4moL7HGbHdZgogj8Gh
	ACMyS9Qlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j75sO-0004p2-1A; Wed, 26 Feb 2020 23:14:00 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j75sJ-0004o7-7L
 for linux-nvme@lists.infradead.org; Wed, 26 Feb 2020 23:13:56 +0000
Received: by mail-oi1-f194.google.com with SMTP id l12so16821oil.9
 for <linux-nvme@lists.infradead.org>; Wed, 26 Feb 2020 15:13:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=t7D/eAVBb3QIjUeI8gVPPwmmzQpjvwDm/tblRM0AR22F6tfdf1Uimge5pwJGXu56vL
 2v1dxmzKGPB8Xrlf154FhGzGYQw0ty1dFs5RPurGbQxBZivPi97ZdqmQsFbIHFT2Lb/v
 d+8hYg1zdebjJcGz92xehFN1IFiwPje3haKfzdYUurunBQq7qlMbxS135kVTG3fznAEd
 dYln21DH7j4dJyn8ekEcRnBtOXi5ozanJNysHgahKwyTqNCi1l4bwXapN6aRfEx7g6Nn
 Wy2PXQ1ZhxsYiIc0avrmVYgNOEFgUqUcnHSpsAsqA6jb2LlbfZauwZVXNhN/YErzcZXl
 rofg==
X-Gm-Message-State: APjAAAV8L1afZZkfr/VlJTO0jnw4qxifKVmCDf9N5b0H+vgtKDikZoSE
 AZEllUqrhB1SQaStbisZvx4=
X-Google-Smtp-Source: APXvYqwAxbREtJds6jbJUTGmza2mEVUDWAADxyu2wuggfpc+mCxSvPWaw2UY3vgPNcJpSCyotDZH7g==
X-Received: by 2002:aca:b703:: with SMTP id h3mr1155393oif.148.1582758832520; 
 Wed, 26 Feb 2020 15:13:52 -0800 (PST)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id r26sm268099otc.66.2020.02.26.15.13.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Feb 2020 15:13:51 -0800 (PST)
Subject: Re: [PATCH v11 6/9] nvme: Export existing nvme core functions
To: Logan Gunthorpe <logang@deltatee.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org
References: <20200220203652.26734-1-logang@deltatee.com>
 <20200220203652.26734-7-logang@deltatee.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <ae8b6be5-92d9-f6f0-6240-d395aada10b0@grimberg.me>
Date: Wed, 26 Feb 2020 15:13:50 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200220203652.26734-7-logang@deltatee.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_151355_265518_EF2156DD 
X-CRM114-Status: GOOD (  10.12  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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
