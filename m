Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C8E879C5E
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Jul 2019 00:18:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PeDh1iC2BEB8YAd9fgNLBdDIG6sth7HDfIWkFC0f2WI=; b=RtVF0SoCLRdjRGm5CGv8aht0i
	LAa6HKh+K0QfWOna68gcj9UTDZBAXgg7rhGNahhjqLfU0pYbslmG2XP2lI7QheCF7N0KcGg0aYLdj
	enViDekNQseq/za9/qcRKXQUDhCA82LkTIFCxZSgVbx5dmkQrGQG1wxF7GzWXMx8qn2V78Ij0tprR
	S5Nmf0ih7YL/zpiq3lDJ1grecvidHsyqOVRYGB8XbGYg1+H8EijtoYp1kM21x4/JLdCiQUA2+dJH5
	PaEYhjkblIWUQsn39fZ+i+aldE/EaDGmBPdjc0/2hU9KSwahDpczRtz3LgxyB00luyiKkJq6AaLTt
	b6Kk/Rcrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsDy5-0006MT-BD; Mon, 29 Jul 2019 22:18:09 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsDxv-0006M6-ER
 for linux-nvme@lists.infradead.org; Mon, 29 Jul 2019 22:18:00 +0000
Received: by mail-oi1-f195.google.com with SMTP id s184so46468370oie.9
 for <linux-nvme@lists.infradead.org>; Mon, 29 Jul 2019 15:17:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=kmHYjFYlyDyF+lKmehj6aiIpikuZV0JApBI3PXSg6qc=;
 b=EA3mXYRMkZ7xuCTK8HT/zgldbp58yZViehqhWDtiZvJ+mWQrNV2lBMnQRZtrAPnoq5
 OVLpz5EAT+B6ZFWidT6D1TidAM9H4J/1yVtJpRbasbgWxbx0KXErlNzjifBTO7oLxRH/
 /m/WALMYleiZYL7FEFDX1B3roTRZ+lea1IQSB16mg0cq+jUZ9AzvIJW/Fd3mwTbCQHL+
 FreL9Y9sIKUMTWIQEkGVXIkw8fHqVL4yYu9HSU0/Xi6jEjgB0TDfzHMgB1B6EC5TGooD
 DdE2/j+/jVhmR6mzTTWF2sERCKVm6mjlAq7uG+jh+OtRN6ty6VdgNEr8xdeXYRftF1jo
 dNSg==
X-Gm-Message-State: APjAAAUA7hVFrHVqWp5Unp0m7/mXJ/N/2URsRWE1e0zj+w6qk4YOXw6e
 Nh30qi+2JfPJ7pTJBH0TTIVmsZSj
X-Google-Smtp-Source: APXvYqwlZnvj6ZxJb/l/1HKZi2r64G8VUb2bKlOFf2rnnNOW9iPomNvuLVqgT6KzQTasqYkfCCPh3Q==
X-Received: by 2002:aca:280a:: with SMTP id 10mr38501679oix.38.1564438678087; 
 Mon, 29 Jul 2019 15:17:58 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id g93sm23598445otb.39.2019.07.29.15.17.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Jul 2019 15:17:57 -0700 (PDT)
Subject: Re: [PATCH] nvme-pci: fix probe and remove race
To: Keith Busch <kbusch@kernel.org>
References: <20190719194256.23618-1-sagi@grimberg.me>
 <20190723204643.GC4002@localhost.localdomain>
 <6e5af7f5-be2a-6cf8-81fc-84ed831cbacd@grimberg.me>
 <20190723223144.GE4002@localhost.localdomain>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <47efa114-a0e9-9631-3104-8c1e0c9f4827@grimberg.me>
Date: Mon, 29 Jul 2019 15:17:52 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190723223144.GE4002@localhost.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_151759_488163_67222D83 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "Busch, Keith" <keith.busch@intel.com>,
 "lizhongfs@gmail.com" <lizhongfs@gmail.com>, Christoph Hellwig <hch@lst.de>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> I think you need to get the ref first and then fire the work right?
> 
> That ref order doesn't actually matter here. We can't call nvme_remove
> during the synchronous part of probe, and the extra ref is just for the
> async_schedule callback.

Makes sense,

Can you send a proper patch?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
