Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96D5DC0E0D
	for <lists+linux-nvme@lfdr.de>; Sat, 28 Sep 2019 00:34:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TTuK8iUMhnQKZ2o4D9eHJBFwQ9An8taqn3RsoPAnnWo=; b=Yx/4CTiep/8aWv/6TGY+9avto
	RwXu+PuQejB3ApqSh2rnVvMUZECbi6pakP5YkyoGlq3Z7auFoGa3ksfWskf3W6qwm8xsz7G1CsdBG
	yqBm8cB6fd+Hz7CkqOH0LKIw7IXnTmDCQA7UdS/w9g2IKHdt7pNKDMurzUXuFdhVGpc3iGnUZWKDQ
	jzwtCnjyWrE5498Df+cBusAG7MZVHsDpyEm+cMYSOe6HkE+BBKdknIoeVjio10VjmyHKjMhIDOQ+j
	hfh7uObBWelth4fYsGAnz72+bmL/LcRyP+U8q1F+zf3PEfHa4tavdYNgC8ud8T1TrHS+mtr/WXBqI
	VlHCTTa+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDyou-000742-20; Fri, 27 Sep 2019 22:34:36 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDyoo-00073e-R5
 for linux-nvme@lists.infradead.org; Fri, 27 Sep 2019 22:34:32 +0000
Received: by mail-oi1-f195.google.com with SMTP id k25so6498306oiw.13
 for <linux-nvme@lists.infradead.org>; Fri, 27 Sep 2019 15:34:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=QqOL/HYipstsdzRdbKFa7B6VDhApW8sIYh5FSgaWqLk=;
 b=oSfEAb1D9DaBA4Tz3UzJrjgqbv5aBRUbqt2bcrDuIuDgwZwh9I1OTHtnwGH03rOCJt
 uf/EdciNoRUS6dODOQxMrM06Vub/HDh62dVZlLU7LTKZwZkEvoW18zbaBH5n7WEoxlSN
 SwzxP0xYitHScyYwMD0wyp1mZu/HveGMSrabNbkTHYO9oIO1ucxhqtJ01ydPOXvI6KPc
 xZA8N0P6eh8Pf3yj+E6Ae2Olg2sqX2WG2XU2hOWYQv8BRZj+3sZyDgRrtRzuHJMpOYt6
 32ykaUTqGVPlrEUNT05l787UqJbMZD4zbw0+99zFRBpCUuQFTeO2asTGwkmWCuPoeW3M
 xlYw==
X-Gm-Message-State: APjAAAVSo9ggEAAoQBZJ5e2Ib55nqMW8bvpJ+rSIoX2bJdzqV0zNapoc
 uuahQOZ544brBJ7ghioLB5rlpiR1
X-Google-Smtp-Source: APXvYqwoUQzpFRVGmAgfJYzaAqSjx4815SxHBMPEiBbLbJnw0mpfnB8Unm8kWOTpcluvIrXss9+pEQ==
X-Received: by 2002:aca:3c82:: with SMTP id j124mr9151159oia.82.1569623667038; 
 Fri, 27 Sep 2019 15:34:27 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id 88sm1489394otb.63.2019.09.27.15.34.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 27 Sep 2019 15:34:26 -0700 (PDT)
Subject: Re: [PATCH] nvmet: add revalidate ns sysfs attribute to handle device
 resize
To: Christoph Hellwig <hch@lst.de>
References: <20190926231940.7494-1-m.malygin@yadro.com>
 <80c2509b-bd48-c3c4-13bf-8ad6b1c0f77a@grimberg.me>
 <20190927221352.GA17568@lst.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <d969c277-a14e-4155-7cee-e5e5af995449@grimberg.me>
Date: Fri, 27 Sep 2019 15:34:24 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190927221352.GA17568@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_153430_876482_F1B80F35 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mikhail Malygin <m.malygin@yadro.com>, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>>> +int nvmet_ns_revalidate(struct nvmet_ns *ns)
>>> +{
>>> +	struct nvmet_subsys *subsys = ns->subsys;
>>> +	int ret = 0;
>>> +
>>> +	mutex_lock(&subsys->lock);
>>> +	if(!ns->enabled){
>>> +		goto out_unlock;
>>> +	}
>>> +
>>> +	if(ns->bdev){
>>> +		ret = nvmet_bdev_ns_revalidate(ns);
>>> +	}else if(ns->file){
>>> +		ret = nvmet_file_ns_revalidate(ns);
>>> +	}
>>> +
>>> +	nvmet_ns_changed(subsys, ns->nsid);
>>
>> Shouldn't that happen only of the size changed?
> 
> s/of/if/ ?

Yes..

> I guess we could do a sanity check first.
> 
>> So what is the model here? have some udev rule to
>> trigger this?
> 
> Well, even if there was a udev rule we can't directly rely on it.

What do you mean we can't rely on it?

I do understand that we'd have no triggers for file-backed namespaces.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
