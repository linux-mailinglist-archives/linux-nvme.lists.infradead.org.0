Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3AA81F5E34
	for <lists+linux-nvme@lfdr.de>; Thu, 11 Jun 2020 00:17:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Xg7u97iVNjJ0CzKYxGZmXTK6yYOcS348oF4z0hXXAH8=; b=nSU2MHNVTw1z/EBl2wOCcbXHz
	nOTlDOTmmX2s6CeAvQn8iSIf5vvb/mBFDDIDGJZ37OuKVyUgz/JUSRdIYSslcnZv/gnuwv1cmO5g6
	oQY+TJtyTmIvHN8wiBwRFvXOu56PiUM1ZEQhgBV6qstB03gCc71rzq3VK7o4U/bKelcXWNBUcvVVt
	WPduRB2RkjvgMQAAl61KMjf7y8a0KtfN3LdIUIYdi08NvtvLB5BBqKqEg1LT3vZaBjFiGjLyQPdAl
	1YyyxxfcR1NKuYlnNVs+eQ48Ate2bZasOWYyMRA86aPtVbfMiIGWUDfttt3N13lFdAraQn+JLDAm5
	PBdoqhrvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj91g-0003Lq-QF; Wed, 10 Jun 2020 22:16:52 +0000
Received: from mail-wr1-f52.google.com ([209.85.221.52])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj91b-0003L0-Du
 for linux-nvme@lists.infradead.org; Wed, 10 Jun 2020 22:16:48 +0000
Received: by mail-wr1-f52.google.com with SMTP id q11so4074657wrp.3
 for <linux-nvme@lists.infradead.org>; Wed, 10 Jun 2020 15:16:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=zbCY/hHgQxPSrYjE2O46zyF1QYY4SIxHNr2akR91mgk=;
 b=nTLAKXD7yY2AEKm9tHkgBMob7ATNujOuIO0MaTbvhIWnXxS8YbFrTykTQ2w6Yrsmp2
 OLM1pnd5frljKtmeweLt7HuI1HNAmf0ZxXqCYwOfPt+cwBRT+l1cSwXBaS8L2SHZOvj/
 YoZ17wu4KM2Q2m6aJWXbcsV5zct54ah1iwvE/23V9Efc6wDSNr0GB2yBFzgVa1tCqyKs
 6p5n4h+alnob62jjhFrZHNW09nqVDyJn8mMQ7muc5cCCKRj0N6pxb73HWFSye9wP5Zwm
 uRkQaWbU9u5JfJgBN0Xnz+O4KETzaemM7avCFHnrtwWOJrq4TcTOghKyqZXv5o+Uj2gp
 5ZGA==
X-Gm-Message-State: AOAM532zHn1rgmfSbZwoog2lPbkoFC/0Wt2JN75+HPjDYz1UI2C3D4To
 ESuH/a/BnVy+J59PjhB1yTad6H4fdlA=
X-Google-Smtp-Source: ABdhPJzBQ1Td6USYA1RZGYlfm2OJb7qVczW1PRK1wQ1ThKXRMcd5l8ZzAvza0DbDUMr0bgJH8q0FDA==
X-Received: by 2002:a5d:69ca:: with SMTP id s10mr6102000wrw.203.1591827405025; 
 Wed, 10 Jun 2020 15:16:45 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:c435:a325:61d8:4388?
 ([2601:647:4802:9070:c435:a325:61d8:4388])
 by smtp.gmail.com with ESMTPSA id k17sm1731917wrl.54.2020.06.10.15.16.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 10 Jun 2020 15:16:43 -0700 (PDT)
Subject: Re: [PATCH V3] nvmet: fail outstanding host posted AEN req
To: Christoph Hellwig <hch@lst.de>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
References: <20200609235514.57266-1-chaitanya.kulkarni@wdc.com>
 <20200610070010.GC1397@lst.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <419b9d66-e36c-049e-4cfe-21475cb320dc@grimberg.me>
Date: Wed, 10 Jun 2020 15:16:38 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200610070010.GC1397@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_151647_465302_0B8DF601 
X-CRM114-Status: GOOD (  10.10  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.52 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.52 listed in wl.mailspike.net]
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
Cc: linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> Thanks,
> 
> applied to nvme-5.8.

Can we add a Fixes tag for stable to pick it up?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
