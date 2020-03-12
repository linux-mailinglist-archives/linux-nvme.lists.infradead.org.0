Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C1C718325D
	for <lists+linux-nvme@lfdr.de>; Thu, 12 Mar 2020 15:06:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ExXageesC23bnCzfdURtdEziul5DFly3x+YvShqFVuw=; b=EnN4p3J7cy6hId
	1h68sl3t+krk46v8Dph6c/9oFqnnTb+PfAhvcHsNzlE5pVBGU4l3rjomn12A7xXzz21m5q//xV9mz
	8c35vfj8TDuP59xL/ba9Nyfydrvx8yDTk6fLTmBIVJu9csUMlm/p8vhxxsb23+zxUs2Lhg1XEp+xS
	o3B9/eZCdA0StaZiFail+EWn1gm0L2CYRroCisYLuTaNXQxeEoTZvpXxOnVziFdOZdFvwirhdSc6h
	DlVUJcInUxT+ar5xVaFv1VI2Ad5WFkY6QTmN6MYduAOUeHp1B8kCywj/ig0yDevKbC+Rv94jUX3fh
	EmAlhxOeI3IpwH5pzkEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCOTd-0004rY-Ti; Thu, 12 Mar 2020 14:06:21 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCOTW-0004qz-Su
 for linux-nvme@lists.infradead.org; Thu, 12 Mar 2020 14:06:18 +0000
Received: by mail-il1-x144.google.com with SMTP id a14so5560536ilk.6
 for <linux-nvme@lists.infradead.org>; Thu, 12 Mar 2020 07:06:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Pji13eSFjIMldkU9BYdIbo4HI44T8oed33naqFgVd6s=;
 b=zssgGwlH8/VmLMRtLhaCwqZbq9RREsK0T5bf6PIvtt1VGFFLfPPnQnZejqOTYcE66h
 YC0y2su0NF5zACw1HZZsr7rjtUkogTsWqTu6Vm6/ie+LuGi85xrZGApcNLASkl90rCNH
 N3iKNDAKYS9oq8i9IEow8BJeJKPxUsJrlebRdwIF5eJPTF0cAwRj9ggXLmAxIDhdEZuG
 PvnpPrEInwbqPNIjvL3PzflYawxDa3mZi2TgaKLvf7ECZzHSxJx3KAoa2ry7Pf7aKJ1S
 y7gpjNa2PHKgoNp0XyIc9HwCBIQjRNDXD+/sV+kacNjm7ivwd82D7IAXuee/0UJ8BEOm
 eHVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Pji13eSFjIMldkU9BYdIbo4HI44T8oed33naqFgVd6s=;
 b=IvZFcVgcWtjDMxOce2DN1GcxctKMPRFZLRsYaiNNhZ2moD7UsMbbtN6vRb+QoLPdVF
 Fc7b/sX4ESBnbspZKGEcYEFIw4J0r2WaJ68GN/c2ytJwTzYqnt+8D/Dj8DFQDe04RQma
 pcwpysmEcg++SBey94LNrHvHx8HLosmn5HuYo7xhP8ZkpeF89LUhPiKar5jRcqDe+Qbv
 xn5exAZ8+LymJQcIsb9DYS/d1paRm8lhuSk+DOT74QhKXStOkg7+g9QftSbFpgEf837h
 Kt6DARpe7Y+xwVRnB6WxBMDHIq+SoH5VNFP0WUUGEHifjbY/kSvD0nETvlEwHP2p1mQ9
 YXCA==
X-Gm-Message-State: ANhLgQ3CrQ2PtTd0uiEYiPR/0qUlUPopHC1RC7Gyd6fQdZrDvehgaUwT
 Bv0dWM666dsXArSvq3t3u3KWuA==
X-Google-Smtp-Source: ADFU+vu/XM+0n/FArOrrpYRuqpoofr0nhTgegl8nM9GcEZ0Y35AWlXD9wYups+i8jASk7u1s54i1cw==
X-Received: by 2002:a92:c904:: with SMTP id t4mr959353ilp.209.1584021973514;
 Thu, 12 Mar 2020 07:06:13 -0700 (PDT)
Received: from [192.168.1.159] ([65.144.74.34])
 by smtp.gmail.com with ESMTPSA id d1sm6126275ilq.9.2020.03.12.07.06.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 12 Mar 2020 07:06:12 -0700 (PDT)
Subject: Re: [PATCH v2 0/5] Add support for block disk resize notification
To: "Singh, Balbir" <sblbir@amazon.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
References: <20200225200129.6687-1-sblbir@amazon.com>
 <f2b805c1a420a07aa9449ee0ef77766a10e9ff20.camel@amazon.com>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <05bb1606-4cf1-dba3-22a0-5f8624b43767@kernel.dk>
Date: Thu, 12 Mar 2020 08:06:11 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <f2b805c1a420a07aa9449ee0ef77766a10e9ff20.camel@amazon.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_070614_928499_9184FE7D 
X-CRM114-Status: GOOD (  16.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "jejb@linux.ibm.com" <jejb@linux.ibm.com>, "hch@lst.de" <hch@lst.de>,
 "Chaitanya.Kulkarni@wdc.com" <Chaitanya.Kulkarni@wdc.com>,
 "mst@redhat.com" <mst@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 3/2/20 9:03 PM, Singh, Balbir wrote:
> On Tue, 2020-02-25 at 20:01 +0000, Balbir Singh wrote:
>> Allow block/genhd to notify user space about disk size changes using a
>> new helper set_capacity_revalidate_and_notify(), which is a wrapper
>> on top of set_capacity(). set_capacity_revalidate_and_notify() will only
>> notify
>> iff the current capacity or the target capacity is not zero and the
>> capacity really changes.
>>
>> Background:
>>
>> As a part of a patch to allow sending the RESIZE event on disk capacity
>> change, Christoph (hch@lst.de) requested that the patch be made generic
>> and the hacks for virtio block and xen block devices be removed and
>> merged via a generic helper.
>>
>> This series consists of 5 changes. The first one adds the basic
>> support for changing the size and notifying. The follow up patches
>> are per block subsystem changes. Other block drivers can add their
>> changes as necessary on top of this series. Since not all devices
>> are resizable, the default was to add a new API and let users
>> slowly convert over as needed.
>>
>> Testing:
>> 1. I did some basic testing with an NVME device, by resizing it in
>> the backend and ensured that udevd received the event.
>>
>>
>> Changelog v2:
>> - Rename disk_set_capacity to set_capacity_revalidate_and_notify
>> - set_capacity_revalidate_and_notify can call revalidate disk
>>   if needed, a new bool parameter is passed (suggested by Bob Liu)
>>
> 
> Ping? It's not an urgent patchset, I am happy to wait if nothing else is
> needed.

It doesn't apply to the 5.7 branches, can you resend against for-5.7/block?

-- 
Jens Axboe


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
