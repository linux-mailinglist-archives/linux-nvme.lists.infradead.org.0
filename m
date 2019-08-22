Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8E33988DA
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 03:06:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kgs5GU8P29EDiqYashdbqvxdwTN7pyL1Lz1ZnY5/AXM=; b=fDC9zguOKX1FCPnojU3xzt4R9
	VRK73gMQEivRLKhUzldPxJo3ld++O325AVvt0fxMcyP1OjhxtRGMZmGOJiJzNfGpHb9q1+mDJwJ5Z
	BkG4miTFAVsKAQ+Q8PW4pBZ9t46O+d9DXsCuEAAxtNQYhlDqvsp6gO8XJiPa6NijjTmfS8KflgHqF
	z2+eNhg9uSHYqmvXyg0M7evwSQR2uqCT2R6WtiaM3ogvckC0rV6mHh3CtosD3WxtXZ+mIvrmj4RkV
	s8csU2Madtyccx4zYVPyJ7ITgSnzVS4v5pbTunp+RJxko5092NHAN+01a+NRm492AF0FZAcP91/UQ
	ynNLnbF6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0bY8-0002ni-Ty; Thu, 22 Aug 2019 01:06:01 +0000
Received: from mail-wm1-f68.google.com ([209.85.128.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0bY1-0002nF-Mv
 for linux-nvme@lists.infradead.org; Thu, 22 Aug 2019 01:05:54 +0000
Received: by mail-wm1-f68.google.com with SMTP id v15so3918854wml.0
 for <linux-nvme@lists.infradead.org>; Wed, 21 Aug 2019 18:05:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=uOOz0eW/57XZ/0Ueo9F4o/K8N42R8egE5vw5NA8BpAs=;
 b=lCXuCVFOQ7fVjUCW61bkCPlvqoL3DqxX4g1bQyVzVXdqi/w3SLy6I9rV4KzQbo9DHc
 MJLhZWYXpDIqPAeF7r9eoiIBVYiy+6Bjc3o5OP9dveg2Qk7o6AM+j0mRX0PDiWGjT0jg
 bpaCib5PuzNSxshc6DWPvQ7xXmTHa9N1w6Kl8VvciQjf96LaxAVMFL/OdpzFJ/hxqlu6
 fSsdLkfyDadxe6McVrdPUzoDA7nhpAfVxyGVyF/b2FT3vA93w9H3h+Gt4qZGxU0zMp9J
 sLQ7tEksSQYFlLv1FpToVR4+zfdnySdIrUda4CvVXphkd/RiYmMzoL9byVaepkZomI8A
 wb9w==
X-Gm-Message-State: APjAAAUUDhrI5FBlPjrXTPPUQ70ZRBFL7msFQ4QiKhfI8paWus9CQ0S/
 dDWfGFkSA0jvHhKxdDkTS3WiR0A3
X-Google-Smtp-Source: APXvYqyLwQNPHXq4yi8pRHRucM4zraFgZaj7MjvsGVXc5T1n5XSMUtxha1krZE1lxFiJNsknXjqDiQ==
X-Received: by 2002:a05:600c:2411:: with SMTP id
 17mr2535054wmp.171.1566435951944; 
 Wed, 21 Aug 2019 18:05:51 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id p186sm1748596wme.9.2019.08.21.18.05.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 21 Aug 2019 18:05:51 -0700 (PDT)
Subject: Re: [PATCH 1/2] nvmet-tcp: fix possible NULL deref
To: Christoph Hellwig <hch@lst.de>
References: <20190808205522.24638-1-sagi@grimberg.me>
 <20190822003406.GF10391@lst.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <6589a2a1-8aeb-5ebe-8209-a3ca020ba685@grimberg.me>
Date: Wed, 21 Aug 2019 18:05:49 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190822003406.GF10391@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_180553_743860_9A2A061F 
X-CRM114-Status: GOOD (  12.19  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.68 listed in wl.mailspike.net]
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
Cc: Keith Busch <keith.busch@intel.com>, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> We must only call sgl_free for sgl that we actually
>> allocated.
>>
>> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
> 
> Looks ok for now, but can you also look into handling a NULL pointer
> in sgl_free like in all other kernel free routines?

I can do that.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
