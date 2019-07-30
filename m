Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A513079DBC
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Jul 2019 03:06:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=R2TlQGPkQAm0AP2dgWnxxh89IzExlW4EfVvER9YVynM=; b=UyF2NDgRk3/J3zNHY8FLQ4tGU
	BKhkYFW9mw4J0zVkq2GYUTAXIMwC0YcBBaTS4A4hpa5FRNSIIBrTzwOlf1uz5MzjSK+WDRf2VIh5z
	JS0l4uVtZ771l/p9+glus+aAbrSB1rWdzGhXsY5tWfHrh5ItFOvQ4n+PQ7wZvrHe/cs98j1A2G8WC
	pgliRDc+kmWOH7zn3vSFO13qWeHXc3V6eu831/eXiJq5nY9ZeEAif6SMYqzAqc9vijWi3Thqepb+n
	Jb7yi4rNS6awcPHOZdm/q+pq1g7FGGFhtH6BT7Q9lGOjUVIpAHTQE8ZV/XE0VgvBrnApCEZoaBB5F
	/UEJLUGRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsGbH-0000Rx-80; Tue, 30 Jul 2019 01:06:47 +0000
Received: from mail-wr1-f66.google.com ([209.85.221.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsGbA-0000Rc-0u
 for linux-nvme@lists.infradead.org; Tue, 30 Jul 2019 01:06:41 +0000
Received: by mail-wr1-f66.google.com with SMTP id g17so63809880wrr.5
 for <linux-nvme@lists.infradead.org>; Mon, 29 Jul 2019 18:06:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=R1K7ekK0ADOR81A0X1+mh32MswB3/v1OVu3vlgpBj+o=;
 b=V89GzHf0H72bIxaeEvGD5Sl/WBx6c0Q50qs9ReuATShOzR45c5M2nBFv9uH7eYU2XH
 E/5InQ5e9kQEX0FGxQr9dsGyqjwXQkwwr9fmbaVsEkVGKGlDYuwsfGMJk30cdc4+6Ti/
 /uL4pcmTgA8hS/vtgfuFpQLw6oNCDQ1WMtAHSbzjacI6SLODfJN+OAQa8y/Kvoiswyl5
 IchMvNu60b2bBgQgDovjtHP5Kjd0ESjPW6q3aD0MBBh4lUHGfH82YKOLXYwWDieK6ywD
 emRmHlMRSycwWumXgRTJw8L2Lp97WzyZI+/a/XL70luO6Aur7fXWGTJm/3nTQ8uTQjML
 6QzQ==
X-Gm-Message-State: APjAAAX6U3a2B2t37q96R5DILGgNuRakXcS0HS1QXqsHHx/B42p/04R0
 24jxDiLrJvpixdNZkNn3r7Q=
X-Google-Smtp-Source: APXvYqzhFGwx+n4bruwHlPbn7Lq+7YXKV9l0t7VvNImJMsAXWUCfm72DapBnMvxiQcRZgMHrHO/TdQ==
X-Received: by 2002:adf:91c2:: with SMTP id 60mr68134403wri.334.1564448798797; 
 Mon, 29 Jul 2019 18:06:38 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id r14sm55347669wrx.57.2019.07.29.18.06.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Jul 2019 18:06:38 -0700 (PDT)
Subject: Re: [PATCH rfc 1/2] nvme: don't remove namespace if revalidate failed
 because of controller reset
To: Ming Lei <tom.leiming@gmail.com>
References: <20190729233201.27993-1-sagi@grimberg.me>
 <20190729233201.27993-2-sagi@grimberg.me>
 <CACVXFVM+WGwQeqiK-poVKoQR4hVxCMWu0n0-HdVGb8EDDCySSA@mail.gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <464bb489-552f-b67e-545d-48616a1e76dd@grimberg.me>
Date: Mon, 29 Jul 2019 18:06:35 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CACVXFVM+WGwQeqiK-poVKoQR4hVxCMWu0n0-HdVGb8EDDCySSA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_180640_062702_69A41347 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.66 listed in wl.mailspike.net]
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 linux-nvme <linux-nvme@lists.infradead.org>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> If a controller reset is racing with a namespace revalidation, the
>> revalidation I/O will surely fail, but we should not remove the
> 
> No, there is sync IO request in revalidation, and the sync IO can't be completed
> during resetting.

Why? of course it can. The controller reset is responsible to
quiesce + abort + unquiesce both I/O and admin commands.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
