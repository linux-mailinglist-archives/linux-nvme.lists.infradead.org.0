Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAE222EA1D
	for <lists+linux-nvme@lfdr.de>; Thu, 30 May 2019 03:13:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EnlpFBr4ldsEYdTWBNvHAUFVmiRjTr9fPn7cEHVgDLQ=; b=RPnGOMeGyelGzJe3YcJMuGn1a
	b7iZ9DXyET7VZFFC3apv5aDVeZKmrI7maYE8aAVpR32hO7EF4O9agPZJ7iSLDtzvzrdcGj/v78PrP
	9i+wFgAlXBpq94fb8qeIUXjJm9LOQdfeudRHlTjVjH0Y6hwI1eMuFMRT7Dm+pbq06jbw8zJjHyWGN
	unKk2jQc6H1H2kLAgoqD3ZuyEKYDBN76KXWW2A2mlCM3WNqnIVozTELDiKle5Z4uEZ+U0GQ/qk6Qh
	bPCtPDTy7aelflQ25gwgL26bSiu9y3qRSXQygb+pq7ackDALWEIxN1FX+jSHbEpB+BW2KbxZMW+rO
	n5n71yKhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW9dd-0000Ao-5F; Thu, 30 May 2019 01:13:49 +0000
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW9dY-0000A4-9t
 for linux-nvme@lists.infradead.org; Thu, 30 May 2019 01:13:45 +0000
Received: by mail-wr1-f65.google.com with SMTP id t4so2990385wrx.7
 for <linux-nvme@lists.infradead.org>; Wed, 29 May 2019 18:13:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=XX/Z/9TR3zGtafYmM8JMA8c9ZM4LEJtW5NNGo+iY6rzV9zHt4wjLYmevH+NOX2HdlM
 E71RySHRy/+rjMUqxec9urinCUkiIPqENlAEao28XEj65FAVFi306+NpD2ToYgdV2GWG
 d3SabEN+QX1rT4HK6a3ceuePi2cqVMbj23QGTUvliGpTBDL+iGBroknsV3CPAfKxD820
 ovYo4+rAtIsPTiXBX/hOxMhwp9NhBsnyskJikNyHaCGGAB4CpmjREGPrkoKlX5LKVfcM
 7Ak465WRmC+3eycotATTdwLlkUbLCPcgkdVmi6BoudIPpttCMuurvPTtAL89bZEFeRBB
 rgnA==
X-Gm-Message-State: APjAAAVbjSxz8RgKAhcjCrVZYty4WgnvmymebP/xbGW80MCtabcgmYK7
 gVXupLxqkhxdAT6lvVxz9Qc=
X-Google-Smtp-Source: APXvYqzUBerReiveVZpINITlF3pW/hF7h6h1aoM0iGglvcKxj0YeSwv9VpBPhBoNpGmf1FcjB+6fKw==
X-Received: by 2002:adf:8bc5:: with SMTP id w5mr552335wra.132.1559178822896;
 Wed, 29 May 2019 18:13:42 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:d85c:2df7:72d9:ea63?
 ([2601:647:4800:973f:d85c:2df7:72d9:ea63])
 by smtp.gmail.com with ESMTPSA id k125sm2062357wmb.34.2019.05.29.18.13.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 29 May 2019 18:13:42 -0700 (PDT)
Subject: Re: [RFC PATCH 3/5] nvme: Introduce nvme_is_fabrics to check fabrics
 cmd
To: Minwoo Im <minwoo.im.dev@gmail.com>, linux-nvme@lists.infradead.org
References: <20190527175346.29972-1-minwoo.im.dev@gmail.com>
 <20190527175346.29972-4-minwoo.im.dev@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <432dd6df-5faa-8f7f-adda-2dd6e0565632@grimberg.me>
Date: Wed, 29 May 2019 18:13:39 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190527175346.29972-4-minwoo.im.dev@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_181344_346744_843AC454 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 James Smart <james.smart@broadcom.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
