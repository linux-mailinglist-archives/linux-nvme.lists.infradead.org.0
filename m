Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5440912CE
	for <lists+linux-nvme@lfdr.de>; Sat, 17 Aug 2019 22:08:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IbsRq0eYBFf63ULPTKL0jrQoPvhaXmbVAEsk9Lwtia0=; b=UOS0UxmvuWzoJG
	VG2x1fjoRYdWGJNJ2W/9Zp+XAwzJf/g2BxOQlSYGth05KDF1/5hTbcvrt+NBBrX7qDRBwH2W7CA19
	O+LHYSLGMM9U52XbyelUuzfIfJ6tlHIn0M1VrL1egFmOmDCN0HFunWkHoLl0Dso8vrScwf4U5MCqc
	mTlAnFQWDRqQ+FU/lvxK4m1kFbeUDMQI+PYfcvHzk9zufUwzHCU2EVe+dT3bgfab17QuENJ/Jbk9I
	EwUYU48Fe+aX1a0OAt+zwo0g6dNOFl+eHdzW+f8Pb7Wl6UtM7m3diQH2h26aybadmNPk/3nGqHAd9
	Udye3HB82ENEdC+Y0ndQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hz4zX-0006uw-R7; Sat, 17 Aug 2019 20:07:59 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hz4zL-0006uc-NL
 for linux-nvme@lists.infradead.org; Sat, 17 Aug 2019 20:07:49 +0000
Received: by mail-wr1-x443.google.com with SMTP id c3so4786102wrd.7
 for <linux-nvme@lists.infradead.org>; Sat, 17 Aug 2019 13:07:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:references:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=LD8Qjbb1bcqEhNQuvANwlKP16jgQXjo5ks/zYoQL4NQ=;
 b=Gh1dgv5yRs0qxI4GZk9J8EvAEFXcwJlN+5SvwWVqZwbB3nLaVAHUK1nKNHl+nLlSdb
 xmHp4HFDVSKv56VLFJ42njzb88uRVb2RIurNr33EfYtoQtHDJ+syWV+/9o0NHUGcy6rs
 CPpaBzohlBT3RnDlBAIIyHVfDc5qVSXI5QPtmHGL7hLIXfYqmKM0QYdgQ2oAalcMrgob
 a+2HNYXmR3Hf0WX9Wfd70ur3FnBheA3icBLAjv+VqhdP1JEBawxGoGn9OZEynSi3mJD/
 n2JHweAzzLKTnCJy6nIEQTOL9+sOBN8V6nXvOK3el2NvBjfP41lUnnTR7RG3bn1Y4gX2
 Tltg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:references:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=LD8Qjbb1bcqEhNQuvANwlKP16jgQXjo5ks/zYoQL4NQ=;
 b=rPet/y3BeEX1Dro/p1wr1BZ3PODgdZDvihyseqFSpm8D54atbf1t4y9k/tWtoxScbg
 N9AbCj0Q+vWlfo5Dia9okWQEIfM5T1+IG+rZo4gzhHSLhsTJ1nBzjZInRbPBw/8Uf1GG
 LA/il/c2/VejZhfvirFV/xg4ZvhlCksqGbPKuAFIt89WPw1ADcK2xGR0fthL2qHi9XIY
 3/iYRI25vKcDgN8sczckNU/jSCnV9+Gl7GR2RNeFJ3DRjNBo0zaYQ4/HGCKrI6vs8xmg
 6V5gpUmW7ocyG92UyqtVNDMlOfv6GembfIskIo49s/A4Euu+SOx5xFpLsegyxhaI0CZV
 SS6g==
X-Gm-Message-State: APjAAAV0azia2RQ2kwJvf8d2QE03fP1ef/IbzFyL7N0zshwneRFJF1/y
 MJN2x8B1J6Uh/iYPaF03kiU=
X-Google-Smtp-Source: APXvYqxzJ5z3T1S4siu+rWpK8U+MgZsNMpLJDhcsQ4vEQU/+BV+l8zljDOxK+NM8rXY7irSumJ59wg==
X-Received: by 2002:a5d:46d1:: with SMTP id g17mr17846055wrs.131.1566072466038; 
 Sat, 17 Aug 2019 13:07:46 -0700 (PDT)
Received: from [192.168.1.19] (chd227.neoplus.adsl.tpnet.pl. [83.31.1.227])
 by smtp.gmail.com with ESMTPSA id r17sm24745415wrg.93.2019.08.17.13.07.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 17 Aug 2019 13:07:45 -0700 (PDT)
From: Jacek Anaszewski <jacek.anaszewski@gmail.com>
Subject: Re: [PATCH v4 4/5] block: introduce LED block device activity trigger
To: Pavel Machek <pavel@ucw.cz>, Akinobu Mita <akinobu.mita@gmail.com>
References: <1565888399-21550-1-git-send-email-akinobu.mita@gmail.com>
 <1565888399-21550-5-git-send-email-akinobu.mita@gmail.com>
 <20190817145509.GA18381@amd>
Openpgp: preference=signencrypt
Autocrypt: addr=jacek.anaszewski@gmail.com; prefer-encrypt=mutual; keydata=
 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
Message-ID: <925633c4-a459-5e84-9c9a-502a504fdc82@gmail.com>
Date: Sat, 17 Aug 2019 22:07:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190817145509.GA18381@amd>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190817_130747_767132_21700E05 
X-CRM114-Status: GOOD (  20.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jacek.anaszewski[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Frank Steiner <fsteiner-mail1@bio.ifi.lmu.de>, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, Dan Murphy <dmurphy@ti.com>,
 linux-leds@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 8/17/19 4:55 PM, Pavel Machek wrote:
> On Fri 2019-08-16 01:59:58, Akinobu Mita wrote:
>> This allows LEDs to be controlled by block device activity.
>>
>> We already have ledtrig-disk (LED disk activity trigger), but the lower
>> level disk drivers need to utilize ledtrig_disk_activity() to make the
>> LED blink.
>>
>> The LED block device trigger doesn't require the lower level drivers to
>> have any instrumentation. The activity is collected by polling the disk
>> stats.
>>
>> Example:
>>
>> echo block-nvme0n1 > /sys/class/leds/diy/trigger
> 
> Lets use one trigger "block" and have the device as a parameter,
> please.
> 
> We already have 1000 cpu triggers on 1000 cpu machines, and yes, its a
> disaster we'll need to fix. Lets not repeat the same mistake here.
> 
> I guess it may be slightly more work. Sorry about that.

We should be able to list available block devices to set,
so the problem would be not avoided anyway. And Greg already proposed
a solution for trigger file PAGE_SIZE overflow, so this should not pose
a big problem in the future once that is implemented.

> 								Pavel
> 
>> +++ b/include/linux/leds.h
>> +#else
>> +
>> +struct ledtrig_blk {
>> +};
>> +
> 
> Is the empty struct neccessary?

Yeah, I didn't like that too and tried to play with the code to turn
it into a pointer but it turned out to be non-trivial.

The thing is that struct ledtrig_blk is made a property of
struct gendisk, which then allows to get a pointer to the struct gendisk
of the registrar in ledtrig_blk_work() via container_of macro.

Initially I did not realize the problem and asked Akinobu to move the
trigger implementation to the LED subsystem since it seems to have
likely broad use and it would be good to have it visible in the LED
triggers config menu.

That move unfortunately entails the cumbersome dependency we're
discussing now. It's to be decided then if it wouldn't be cleaner
to have that trigger entirely implemented on gendisk side.

>> +static inline void ledtrig_blk_enable(struct gendisk *disk)
>> +{
>> +}
>> +
>> +static inline void ledtrig_blk_disable(struct gendisk *disk)
>> +{
>> +}
>> +
>> +static inline int ledtrig_blk_register(struct gendisk *disk)
>> +{
>> +	return 0;
>> +}
>> +
>> +static inline void ledtrig_blk_unregister(struct gendisk *disk)
>> +{
>> +}
> 
> Normally we put such empty functions on single lines...
> 
> Best regards,
> 									     Pavel
> 

-- 
Best regards,
Jacek Anaszewski



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
