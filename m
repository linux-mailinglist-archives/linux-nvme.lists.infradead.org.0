Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7A7E94D1B
	for <lists+linux-nvme@lfdr.de>; Mon, 19 Aug 2019 20:38:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IrtA4Vr7ixpZXpt11n1VdnQr+y794+9o/qR1G9hYIDM=; b=kD5ZEWAWm7Ay6d
	ljTABLnbD1/i9ov98/VgcHu0cR85tdIJ9oDNECa9W35URixlBw7xlw3N0Pm69II6RhmN+E2FrdEyk
	+IPhvrLTQq3OQqJ4jsurtYYqDvexT15X6SHAX4FW4XuJTdc/0FHD0EZ06OK7jl5Segj2wQXo7MWJ3
	7c6Glq0Z3Cc6aAlyxzg9hjS/qItia43fJl7jdSvsO3tTvEnlQ1yvRJ943I1UT2XFJeiiW5Zmc8RCU
	GuGREVRzR+qFVgSssUQsuoLXy8GS0m7hb7vZ9z0p5KMsu9zgh2G+WJBkWi0qZBiIb8f3VRBOpIaj0
	JSwMPqPVRh1H3hLdx46g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzmXw-0005wA-JE; Mon, 19 Aug 2019 18:38:24 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzmXa-0005vq-PF
 for linux-nvme@lists.infradead.org; Mon, 19 Aug 2019 18:38:04 +0000
Received: by mail-wr1-x443.google.com with SMTP id q12so9735194wrj.12
 for <linux-nvme@lists.infradead.org>; Mon, 19 Aug 2019 11:38:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=cIrL3scp5ndT4QoAwmQFa6wJroESbQgE005qtCJVrUk=;
 b=re+1j/rg2hK9mTT+dll6Gs7W61A2Z3IVAvOrOEUUHaTWc5iS/T4cZB2/N+cl0ApYyg
 fkIq2+6HxeujWn8C8jpK4S8xVRr8GTjAFZR37/iJdIJDiMclgKJwl3PMXqO4cCmQTb0A
 Hizxs8oxDkizgkFUnGaEhtVqXfPk4RcEy4AV6REZ08Xq5Dk+5qhPA6aPAOoj1JKzQVLX
 C1Y5ElSrHKWyfJwIC2BXYbi/4bR7uRTuEkfGJiVyz44jYACUdUsxDRcRmCUE0ruZo+11
 27iuKQsLpoXSiVwyxq6xmUjsRHeqy2ObVgUU1VwDdjeqqFTvsPHEdHf3SEDV/kH+a6S3
 hFlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=cIrL3scp5ndT4QoAwmQFa6wJroESbQgE005qtCJVrUk=;
 b=twcHu1Iqvx6xj4W+2u8rbPUZQNW2ZMIDwJq9uPe6JN+kUQ+z8w8fEJpXRgRNPHZghR
 /ksg2DOI8XECRgv5V4LwTq6b2G1f6QTMrL0feBn0uJCtvAoIgSPoxgYFRMgmUBX7CHHn
 uJY5nMXW0aaVYOwqaOFAfgOEMCGKkAi7PpB3b1YqRcuZwI1QWGwjOXE9M6Gfv+l8tsHC
 mAQ4OSzc8LCR2Cnkk196jaQXlPLHMkfics05TUym6fV6n3uIg/G5J2EdG3XB9/FTI59a
 qB/TlYHpTURRrzW7BHbimR3DgssDhg9fUp/8CBrQFjGB8uM3WW95z/c0ZIPfOwjqqGBW
 4vkw==
X-Gm-Message-State: APjAAAUfQbJKDjdsf6kd51DhWpFTud4lXSVBvVBW2xW6rLKWARyp3k6i
 FxU6uJhUmYB4BGX8JlWV7iI=
X-Google-Smtp-Source: APXvYqxYEUzGwthqRV6QMQ4EwZEjlbSwa+YhDv6NbjmiWhJVJAfzzJuyFdUgDDCCThagpiGWMDfYhg==
X-Received: by 2002:adf:cd08:: with SMTP id w8mr22392265wrm.147.1566239881332; 
 Mon, 19 Aug 2019 11:38:01 -0700 (PDT)
Received: from [192.168.1.19] (cke222.neoplus.adsl.tpnet.pl. [83.31.80.222])
 by smtp.gmail.com with ESMTPSA id j16sm14170827wrp.62.2019.08.19.11.37.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 19 Aug 2019 11:38:00 -0700 (PDT)
Subject: Re: [PATCH v4 4/5] block: introduce LED block device activity trigger
From: Jacek Anaszewski <jacek.anaszewski@gmail.com>
To: Pavel Machek <pavel@ucw.cz>
References: <1565888399-21550-1-git-send-email-akinobu.mita@gmail.com>
 <1565888399-21550-5-git-send-email-akinobu.mita@gmail.com>
 <20190817145509.GA18381@amd> <925633c4-a459-5e84-9c9a-502a504fdc82@gmail.com>
 <20190819143842.GA25401@amd> <7c4c4853-7e3a-0618-92a0-337e248e2b4c@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=jacek.anaszewski@gmail.com; prefer-encrypt=mutual; keydata=
 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
Message-ID: <c937b7e0-02c6-ae9a-aaf7-16a2ef29886d@gmail.com>
Date: Mon, 19 Aug 2019 20:37:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <7c4c4853-7e3a-0618-92a0-337e248e2b4c@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_113802_975267_157CAF8B 
X-CRM114-Status: GOOD (  18.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jacek.anaszewski[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jens Axboe <axboe@kernel.dk>, Hannes Reinecke <hare@suse.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>, linux-scsi@vger.kernel.org,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Frank Steiner <fsteiner-mail1@bio.ifi.lmu.de>,
 Akinobu Mita <akinobu.mita@gmail.com>, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, Dan Murphy <dmurphy@ti.com>,
 linux-leds@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 8/19/19 8:22 PM, Jacek Anaszewski wrote:
> On 8/19/19 4:38 PM, Pavel Machek wrote:
>> On Sat 2019-08-17 22:07:43, Jacek Anaszewski wrote:
>>> On 8/17/19 4:55 PM, Pavel Machek wrote:
>>>> On Fri 2019-08-16 01:59:58, Akinobu Mita wrote:
>>>>> This allows LEDs to be controlled by block device activity.
>>>>>
>>>>> We already have ledtrig-disk (LED disk activity trigger), but the lower
>>>>> level disk drivers need to utilize ledtrig_disk_activity() to make the
>>>>> LED blink.
>>>>>
>>>>> The LED block device trigger doesn't require the lower level drivers to
>>>>> have any instrumentation. The activity is collected by polling the disk
>>>>> stats.
>>>>>
>>>>> Example:
>>>>>
>>>>> echo block-nvme0n1 > /sys/class/leds/diy/trigger
>>>>
>>>> Lets use one trigger "block" and have the device as a parameter,
>>>> please.
>>>>
>>>> We already have 1000 cpu triggers on 1000 cpu machines, and yes, its a
>>>> disaster we'll need to fix. Lets not repeat the same mistake here.
>>>>
>>>> I guess it may be slightly more work. Sorry about that.
>>>
>>> We should be able to list available block devices to set,
>>> so the problem would be not avoided anyway.
>>
>> Should we? We need to list triggers, but we may not list all the devices...
> 
> This is similar to usbport trigger that lists available
> ports as files in a sub-directory. We might eventually go
> in this direction.

I must withdraw this statement. This is not similar to usbport
trigger. The difference is that with ledtrig-block we have separate
triggers per each device and I am not aware if there is some centralized
mechanism similar to blocking_notifier_chain (usb_notifier_list
in drivers/usb/core/notify.c) available for block devices, that
would allow to gather all available block devs under common trigger.

Moreover I remember Greg once discouraged using notifier chains
as they are unsafe, so we would need some other solution anyway.

>>> And Greg already proposed
>>> a solution for trigger file PAGE_SIZE overflow, so this should not pose
>>> a big problem in the future once that is implemented.
>>
>> Which still leaves us with pretty big/ugly triggers file... and we do
>> not have the fix in the tree yet.
> 
> Still, we have that interface and must keep it. It implies the fix
> will need to be applied anyway.
> 

-- 
Best regards,
Jacek Anaszewski

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
