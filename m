Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CC57C0A44
	for <lists+linux-nvme@lfdr.de>; Fri, 27 Sep 2019 19:24:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=a5rljt+Rt8f6PQa7s6hVOpOvh41JwjKc8+1Tqr1Bjvs=; b=bFHihC15zl7dO6WOzEGAEAIw1
	jgdPRsy+uWcyC2pGqS2tHR3XjJQ3GJCGZ7aJmRlDRAr8R+KTxjuY12j8BDthxmUb0SMyGpQXfBqI2
	D0FDFdAcVDOsEdyDeiDTbvSM380ZpN0mrsWUAiTrvTiImymZBuS/DjcqAx3/E+YbG96G1dm/CKbFZ
	y+0EYmRFHz7DY5GHuoFlYTlBYs/uW+jwSkKUug+TYhLs6NyS4stAbcaYHia7UadRQjleFQyHcV8Cc
	JuLC+EPA+wosRLE9bWYwPcg1+LoViKe88jxs4/M379yEwxSiUFwE4JoBpSQAaya9pnO6seKsp0h1F
	xh03TDWmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDtyi-0002ar-Tn; Fri, 27 Sep 2019 17:24:24 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDtye-0002aN-RZ
 for linux-nvme@lists.infradead.org; Fri, 27 Sep 2019 17:24:22 +0000
Received: by mail-oi1-f196.google.com with SMTP id m16so5869788oic.5
 for <linux-nvme@lists.infradead.org>; Fri, 27 Sep 2019 10:24:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=7D4V63TAXoTT4F9yKTxXrLXJn7A7fjPs4Ts3QV4JA4E=;
 b=oRC9zACbcCjOl+qwgI7KGUGUFjP5rhlgwTWlI5R8wCtbkUJ+wh9whkoE3vDsJH8tpQ
 /F4tfAfBD86k0Bkjasl7mruKjsATT0wciaCx+xqxdOuohfQk5rPcTLH85iH9ZIyqECzv
 OG6bwQu6DlpiT8n5K/oDMq8s4yaaV1mDtIUjbqPOYFMiZ4KNEG8/Iq/TQklmMh5pyeQc
 vDpRZsjWTl0cxoKrxRibIX8svUzVTJOxDQj4x+1OtJNbw0pDUJMjnCJX6Val3mYZz3dk
 2XOAZPw7BAf+dvm6TIf8wGT1mfHE3AgGNz0XEa7fbYlhZZU7uFczZIFzU4FBMjYBx/NQ
 565w==
X-Gm-Message-State: APjAAAXOXvOyiWRD3FxdzRGULm7kBIP0sWH/RwM6kHKm5r1HjCzFSzsh
 aU4mjx/+I1bC5Etg9kTBUu4dtBAv
X-Google-Smtp-Source: APXvYqxu9AN6e87fMwEfuS/m3gPhb6TGSK0p6150gZUbru8ucWYrxXKDXI5bdsH0bCG2niK6HH+zbA==
X-Received: by 2002:aca:d887:: with SMTP id p129mr8233990oig.92.1569605059625; 
 Fri, 27 Sep 2019 10:24:19 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id t10sm1834676oib.49.2019.09.27.10.24.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 27 Sep 2019 10:24:18 -0700 (PDT)
Subject: Re: [PATCH] nvmet: add revalidate ns sysfs attribute to handle device
 resize
To: Mikhail Malygin <m.malygin@yadro.com>, linux-nvme@lists.infradead.org
References: <20190926231940.7494-1-m.malygin@yadro.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <80c2509b-bd48-c3c4-13bf-8ad6b1c0f77a@grimberg.me>
Date: Fri, 27 Sep 2019 10:24:17 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190926231940.7494-1-m.malygin@yadro.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_102420_887428_0F5F3A4A 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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
Cc: Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> +int nvmet_ns_revalidate(struct nvmet_ns *ns)
> +{
> +	struct nvmet_subsys *subsys = ns->subsys;
> +	int ret = 0;
> +
> +	mutex_lock(&subsys->lock);
> +	if(!ns->enabled){
> +		goto out_unlock;
> +	}
> +
> +	if(ns->bdev){
> +		ret = nvmet_bdev_ns_revalidate(ns);
> +	}else if(ns->file){
> +		ret = nvmet_file_ns_revalidate(ns);
> +	}
> +
> +	nvmet_ns_changed(subsys, ns->nsid);

Shouldn't that happen only of the size changed?

So what is the model here? have some udev rule to
trigger this?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
