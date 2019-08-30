Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83360A3D6F
	for <lists+linux-nvme@lfdr.de>; Fri, 30 Aug 2019 20:08:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qrPWMyDrJC2jlb1m3lpqHwjccT4lrvzQM4qzwYjNkCg=; b=YbvRWcuVTCRTavaIXISUvgG0A
	HBZMZZUQQarg9TLgtI8MGEd3RLu23LZjldyR3UzChX/0NFn3nGZWiAHUB+tZ+XhkOt7yxUgbGD7/6
	T5TAp+P+em4/v4unbuzRS2xx3oOzaH7TmEqgr9meCpPZ5kXhC2uXBoD0owyjCO8nIWA/H9ebr9Qqw
	+i+XGECXOaEVrAeqJkDjjUS6FLPYmKh5Ru+gRAEVJ9YpNT7n0z7m2MY4dlVxFIiYlGCtiAce2os7K
	pVp0fW653LDiC9ufSFSxFwYJ2xnLdzqTSwLSo5tmacRg/5VqDqK2Uwn4xQaCdRO4V2c4JKu+vEzYL
	5gVf1srsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3lK5-0001Gp-AM; Fri, 30 Aug 2019 18:08:33 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3lJv-0001G9-0c
 for linux-nvme@lists.infradead.org; Fri, 30 Aug 2019 18:08:24 +0000
Received: by mail-oi1-f194.google.com with SMTP id n1so6044949oic.3
 for <linux-nvme@lists.infradead.org>; Fri, 30 Aug 2019 11:08:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=8WcqhFY+HXLsWaR9k6uq7mqcDR/FvX17iR08vwKJNkg=;
 b=SHZdxSWJClDGXkrrj/3w+r/Ex0ulcOendYqppJ7VW5yUEkzAm3OuUQOs7zIf7Iq9wu
 1QMM4X1njOHwPX0pw3TPHlJRmAoKwIvVtE218wznSocwA7SmpqUBojd5NB3Kcdcj3qzT
 lL+2gaiLKw8rJZpWD8jF6A8E3yNaHvYqVkaIXo6xVAGoqfOmrnBcd+KJO0fRkpUfixFT
 eODlUiCM5dRB09X72IcpW91v63zgo/n/ob3sodAXh6aP10JMj2HYXEgaQkkvwXYbd6qT
 3nSidjIQQ/1JW8Nrtn0q/7NEWnYN2prcFzGQzua3vE1RaCUX+A+oXKKKBdZryjGV8QuR
 iprg==
X-Gm-Message-State: APjAAAVvLWsHcaU1b/O9PlBdcG5CimMa4uUp/UOhvQ+jNHD5xcw5owqd
 FwduDWuHPAdYt86eDZa2KfU=
X-Google-Smtp-Source: APXvYqy/r+B34kWyM1uoSMAGuaDOErtirv5P6iSD1QVBLVfIYjMhC3Jv/g6vrbd1ORP6cWObumfZAQ==
X-Received: by 2002:aca:75c2:: with SMTP id
 q185mr10615384oic.134.1567188501705; 
 Fri, 30 Aug 2019 11:08:21 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id 59sm2340442otq.9.2019.08.30.11.08.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 30 Aug 2019 11:08:20 -0700 (PDT)
Subject: Re: [PATCH v2 3/3] nvme: fire discovery log page change events to
 userspace
To: Christoph Hellwig <hch@lst.de>
References: <20190712180211.26333-1-sagi@grimberg.me>
 <20190712180211.26333-4-sagi@grimberg.me> <20190822002328.GP9511@lst.de>
 <205d06ab-fedc-739d-323f-b358aff2cbfe@grimberg.me>
 <e4603511-6dae-e26d-12a9-e9fa727a8d03@grimberg.me>
 <20190826065639.GA11036@lst.de> <20190826075916.GA30396@kroah.com>
 <ac168168-fed2-2b57-493e-e88261ead73b@grimberg.me>
 <20190830055514.GC8492@lst.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <4555a281-3cbc-0890-ce85-385c06ca912b@grimberg.me>
Date: Fri, 30 Aug 2019 11:08:19 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190830055514.GC8492@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_110823_060151_29BC2C02 
X-CRM114-Status: GOOD (  14.37  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 James Smart <james.smart@broadcom.com>, linux-nvme@lists.infradead.org,
 linux-kernel@vger.kernel.org, Keith Busch <keith.busch@intel.com>,
 Hannes Reinecke <hare@suse.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>>> Yes we do, userspace should use it to order events.  Does udev not
>>> handle that properly today?
>>
>> The problem is not ordering of events, its really about the fact that
>> the chardev can be removed and reallocated for a different controller
>> (could be a completely different discovery controller) by the time
>> that userspace handles the event.
> 
> The same is generally true for lot of kernel devices.  We could reduce
> the chance by using the idr cyclic allocator.

Well, it was raised by Hannes and James, so I'll ask them respond here
because I don't mind having it this way. I personally think that this
is a better approach than having a cyclic idr allocator. In general, I
don't necessarily think that this is a good idea to have cyclic
controller enumerations if we don't absolutely have to...

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
