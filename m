Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C3F51A12F3
	for <lists+linux-nvme@lfdr.de>; Tue,  7 Apr 2020 19:48:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qBPpBxUbz3b5ZE24iwrMKppi1gthGduggt2oFINEA1A=; b=NrrK4YlWQryxuPzgrrCFA/8LY
	zoTYjyljKT0XnuebL8qkDoQ805HFMRQnFOQ/mktVj0qH8QXY9WhmOkClV1xXt0iWObYP6Pd9OdW3d
	Wa/fr0kX0kVF7sCNsWTleNhAi96d5O/fHL11uVCrEkZ+kNtljO+0WjxWUweBImGJHvqj2p5ESfShL
	vwgqjq+quzYSp9AC2m413uD3Ul9dpIPIvxoT/yS6fxyMG4tZjbazJh1m/j7DqhJ54LKPfylUWy/Fg
	x1bCSQZd1OUwBLDwuj5O5Mk4eHaVdLilTG6ANeA77Yae3f8YvzREBjzXH1HUQwaoBgno6WKURbYo0
	R32uitnFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLsKa-0007EV-Iw; Tue, 07 Apr 2020 17:48:12 +0000
Received: from mail-wr1-f46.google.com ([209.85.221.46])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLsKW-0007Dn-Ds
 for linux-nvme@lists.infradead.org; Tue, 07 Apr 2020 17:48:09 +0000
Received: by mail-wr1-f46.google.com with SMTP id w10so4910217wrm.4
 for <linux-nvme@lists.infradead.org>; Tue, 07 Apr 2020 10:48:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=FazjMTdsOt9oKYAmjCFnvUYuVujaXadethFRSG4pgtc=;
 b=sviv0XCAVRUfzJLhGxi5+LNa4rnsdubKvag/1nX+VrPguyrYoFltnmrQGidXWk0ZiP
 nLFNPnhuu9AJGmJDFrslnPbpnbBd9Im8PfPMTnJlai8O9jY7Qib31zHSLAlhZhJarqmB
 MyAUrt3tA+onxp8AULfRqpGDt7LHlMKmw4MX9Y1j/NIyuc1MZrI72XG9w5AZ5RgFoAqw
 mBpBN9JZFDcna0tXDweFlDitCieSjOZclbpf36MML5KMqlp4w4LumaxdMMrtFFN3AtcX
 uMDs3uEledd0GwATL5L3xz+KH5hbq07cDweH85QENkI/+xGoSJZD+5oDY4sLk2E/AsaW
 ruMQ==
X-Gm-Message-State: AGi0PuZZz6W8oTdqqpCprhnlaEYSeD/5F6gcGF1hocWomtBGff0i4Hlu
 /w9kHoghPSFa6CctWI3/yLe0C8N3
X-Google-Smtp-Source: APiQypJjFziUututi/2HH5aXYqlHjG+WScIQNPuYF48dsQ/AGQ9e98oICkJ7xrHzU8Y0hDnww3Qyaw==
X-Received: by 2002:adf:d846:: with SMTP id k6mr3796734wrl.268.1586281682432; 
 Tue, 07 Apr 2020 10:48:02 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:de6:f05e:6a88:9257?
 ([2601:647:4802:9070:de6:f05e:6a88:9257])
 by smtp.gmail.com with ESMTPSA id r15sm34307890wra.19.2020.04.07.10.48.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 07 Apr 2020 10:48:01 -0700 (PDT)
Subject: Re: [PATCHv2] nvme: define constants for identification values
To: Christoph Hellwig <hch@lst.de>, Keith Busch <kbusch@kernel.org>
References: <20200403175346.1571822-1-kbusch@kernel.org>
 <20200404070437.GA14423@lst.de> <20200404170742.GA53042@C02WT3WMHTD6>
 <20200407172559.GA6876@lst.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <bb8608c9-c523-c9d4-83fa-9c3fac627604@grimberg.me>
Date: Tue, 7 Apr 2020 10:47:57 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200407172559.GA6876@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_104808_468888_3B68713C 
X-CRM114-Status: GOOD (  16.70  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.46 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.46 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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



On 4/7/20 10:25 AM, Christoph Hellwig wrote:
> On Sat, Apr 04, 2020 at 11:07:42AM -0600, Keith Busch wrote:
>> On Sat, Apr 04, 2020 at 09:04:37AM +0200, Christoph Hellwig wrote:
>>> On Fri, Apr 03, 2020 at 10:53:46AM -0700, Keith Busch wrote:
>>>> Improve code readability by defining the specification's constants that
>>>> the driver is using when decoding identification payloads.
>>>>
>>>> Signed-off-by: Keith Busch <kbusch@kernel.org>
>>>
>>> I can't say I find this an improvement - the bit values allow you
>>> to jump straight to the spec, while the names need a translation
>>> (either to the actual bit or the spec name without underscores and co
>>> first).
>>
>> Named constants tell us what they are inline with the code that's
>> using it. You can make sense of the code just by reading the code,
>> no additional docs or code comments required.
> 
> Sometimes they do, but especially for nvme they often don't.  Anyway,
> I'd like to hear from Sagi and/or Jens to see if we have more people
> who like this or don't instead of just us two having different
> preferences.

Personally, I'm in Christoph's camp, especially when the names include
words like CMIC or NMIC etc... These are cryptic unless you are familiar
with the spec and the NVMe language. I often find it easier to have
the bits.

But, I'm also often asked about constants and their meaning, so I'd be
in favor of adding some descriptive names. But if the point here is to
save the code reader a trip to the spec, then we should probably add
some documentation explaining some of the somewhat cryptic acronyms we
have in NVMe.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
