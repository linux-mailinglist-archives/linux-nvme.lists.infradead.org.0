Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F5B0A26F7
	for <lists+linux-nvme@lfdr.de>; Thu, 29 Aug 2019 21:06:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1xYyAbGdRcna7C1vda0YIY1aeEiZdbxdvINiC7bcRpg=; b=aWkhe95deic7z49jh/EPh3nHn
	AvCa3uFcRDPYqz8SZHDRi404KpiUDoS9RsTHWlvWsgabtZQnmWdZ6xOKpBOoScLd1dMMxC5bsnjs8
	gaXJzggQrrGj4yB5fEIyHmUhi2ou4cCstQTuNZFr/ZkW8/YhXxlla0gvfmaGIHx33HkDpHkk0Tjte
	w/daP9nf3KLTegr7/+T/RGYVrr5mbYTDjJA+uRVACM2Qk3hS8ulaQk/r0tYhc/5LN3mqr3LEiBnwZ
	HSqnyWr1ukDXS4nJchfcJ20BypN+GHC2sfY/IwwH7xsESqBExYCdRx3dTvEG4ed/7hdIrIhi5XHDL
	eTIZ+HJGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3PkQ-0002Dj-I3; Thu, 29 Aug 2019 19:06:18 +0000
Received: from mail-wm1-f44.google.com ([209.85.128.44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3PkJ-0002Cx-5n
 for linux-nvme@lists.infradead.org; Thu, 29 Aug 2019 19:06:12 +0000
Received: by mail-wm1-f44.google.com with SMTP id g207so846055wmg.5
 for <linux-nvme@lists.infradead.org>; Thu, 29 Aug 2019 12:06:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=d0ctPCH0pl4kanVJBg2CBb0a8UMcYE/XRvV0hWmAHgc=;
 b=ZC4jJeizajnaXa/xHBR3G+3y/vhlTbjLH+ZCweW2Z+ZZPNovmAcuAC/jcqWYHqamvU
 z4N34EtDVs6PrzB8cyrL9G5nzJWvxvFbqNzmo3PsgEKYr75Y4yaTBQFZBhERsrlDFAVz
 UlpQ2+Oz9Sv36OzfwYL/LiCxIwJdt1rDVgZHmzscZka9NIqguicSW2clLwVRVUevwc6U
 c9WhoL9j5YxGV17ULiWkyKq6BkaS+7a7xyv04QFAPIFMo9j6Uh+3+Ki79jX012wN2Tzo
 tLdknprvds1dkQX1N/H9CxRkvA/QcNqnm3w9NfkHFo8YeXD8pnmnIohFR5Dk/qZ2QmFe
 EjDQ==
X-Gm-Message-State: APjAAAUea8zUkE+a3Gbd5em4hgwRb4MORImvlO75+80jlFaBnanYnRAM
 ng01i18dmhwCO6eRIN4X4E4=
X-Google-Smtp-Source: APXvYqzsgy5uAq1ETV3VkQWsVJWg7O1QKKBkTUNBL2ryU8xVR96HYZrWCkp6NQX3BRPlpsMVKKn0kw==
X-Received: by 2002:a05:600c:24a:: with SMTP id
 10mr13855574wmj.7.1567105569354; 
 Thu, 29 Aug 2019 12:06:09 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id w13sm7633450wre.44.2019.08.29.12.06.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 29 Aug 2019 12:06:08 -0700 (PDT)
Subject: Re: [PATCH v8 7/7] nvme: fix ns removal hang when failing to
 revalidate due to a transient error
To: Christoph Hellwig <hch@lst.de>
References: <20190823055442.19148-1-sagi@grimberg.me>
 <20190823055442.19148-8-sagi@grimberg.me> <20190825013813.GC23887@lst.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <f587b1cb-e4e3-631b-58bb-35487c81a6f2@grimberg.me>
Date: Thu, 29 Aug 2019 12:06:01 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190825013813.GC23887@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_120611_220489_CD3FD4E9 
X-CRM114-Status: GOOD (  18.07  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.44 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.44 listed in wl.mailspike.net]
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 linux-nvme@lists.infradead.org, James Smart <james.smart@broadcom.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>>   	ns = nvme_find_get_ns(ctrl, nsid);
>>   	if (ns) {
>> -		if (ns->disk && revalidate_disk(ns->disk))
>> -			nvme_ns_remove(ns);
>> +		if (ns->disk) {
>> +			int ret = nvme_revalidate_disk(ns->disk);
> 
> This still means nvme_revalidate_disk leaks nvme error codes into the
> block layer.  I think we need a lower level helper so that always
> returns valid error codes.

I see, I can create a helper..

> While we're at it - I think any namespaces
> that is on ->namespaces and thus can be found here should have
> ns->disk non-NULL.

Not necessarily because we first remove the disk and only then
remove it from the controller namespaces list. Keith commented
that we do this to allow the timeout handlers from the dirty page
sync in del_gendisk to find the namespaces and freeze/quiesce their
request queues as needed.

>> +
>> +			/*
>> +			 * remove the ns only if the return status is
>> +			 * not a temporal execution error.
>> +			 */
> 
> Nit: Please start sentences with an uppercase character.

OK.

> 
>> +			if (ret && ret != -ENOMEM &&
>> +			    ret != NVME_SC_HOST_PATH_ERROR)
>> +				nvme_ns_remove(ns);
> 
> Shuldn't this also include anything that has the DNR bit not set?

Not sure, I was aiming to find for these transport related errors, but
I guess we can have it for all non dnr failures.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
