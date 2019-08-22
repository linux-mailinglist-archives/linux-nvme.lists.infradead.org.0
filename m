Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D1ED988D7
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 03:04:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0Seaz2RPcDf0Rj+75A/k5XkGF59FG00rU+0EUH5t4hI=; b=F5t9PVLpoZB+FHpBISzJQuiv3
	S6MBBDKATIg4R7kBmLGEXa6q5qGvtVekeJrGvp8q0C0PmsGgM4+GAAvurSnNIVOsVOIL48V/+V1CR
	xxVCZpVwX7SFUYCdZCp82v89E/FNn/9EFV8tJF/3Lh6ugByV1/z7sSQeyqw7IAnBytNI9hyZ7dBoa
	1mOWjMLc7woVfaUZBx11kvfXFwvLW0l0Vfx+fBmOnvcMjE8sCTWPrJMvW8OA2ngDtS14fImdKRU8y
	2pOVDT/waE8rHdyqF61GBOFtG8jEhNE9QMfy+OfD40qkfCjtCcW5bVtTPPRIT4EhaBFxIe0NLYXCV
	k2s/tq1og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0bWO-0000rP-Lp; Thu, 22 Aug 2019 01:04:12 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0bWK-0000r0-9P
 for linux-nvme@lists.infradead.org; Thu, 22 Aug 2019 01:04:09 +0000
Received: by mail-wr1-f67.google.com with SMTP id t16so3732758wra.6
 for <linux-nvme@lists.infradead.org>; Wed, 21 Aug 2019 18:04:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=UaoWQSw6YUV4wxgFYhJuTbUE3CnE4co/M8FI4ItWgj4=;
 b=SHkR9gPdl7ty2Cct/bUuPDKqoDOrl6N14onJVivigUpKBwWX9lcsyUYGOzdY0MDgF1
 mPpa0FnqoLMok7A+62Q7OQmtJKtQrL61iIpAxUEJH16Tz8EZ1u0XT/cyHhpfF0R0bKtY
 ibfWkfAx8PqfNmWRgrevBhAUWqrKS3/gkFUb/EMkfH0IvTcrMNzTWsrVbMgoE3l9BIGg
 fpp0SufuEeCpTgLHn9qmOajFrj1NfIYTzIETg6AH9MFadz6Yxy2V5fkXfOhUvM55NgZb
 aOohhWtvtBxDJA1BIBmNJfg6DsNUjq1VVu2ooMN8jqAlwk2HSCMVQiAwFFAiZC+zVdHZ
 gx6Q==
X-Gm-Message-State: APjAAAW79RFEK8mNugWAiejZ8iGhsDs+tTu35AiLwu2tt03i1L+0i+us
 HU4AWASzPhC1zMBmBcwdoQ8=
X-Google-Smtp-Source: APXvYqw5Y2YkHQeDMhzovp6l4hkMGlj/lCtHwQkEOJVtUY23ejoPO0Okz8h57cdDc7Wx/HiEKjzXrA==
X-Received: by 2002:a05:6000:1603:: with SMTP id
 u3mr9179119wrb.286.1566435846432; 
 Wed, 21 Aug 2019 18:04:06 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id 20sm1135454wmk.34.2019.08.21.18.04.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 21 Aug 2019 18:04:05 -0700 (PDT)
Subject: Re: [PATCH v6 7/7] nvme: fix ns removal hang when failing to
 revalidate due to a transient error
To: Christoph Hellwig <hch@lst.de>
References: <20190813064304.7344-1-sagi@grimberg.me>
 <20190813064304.7344-8-sagi@grimberg.me> <20190822004951.GQ10391@lst.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <a975f0ee-ee78-4551-5419-0be3c24b3451@grimberg.me>
Date: Wed, 21 Aug 2019 18:04:02 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190822004951.GQ10391@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_180408_330023_0EFF1B27 
X-CRM114-Status: GOOD (  16.14  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
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
Cc: Keith Busch <keith.busch@intel.com>, James Smart <james.smart@broadcom.com>,
 linux-nvme@lists.infradead.org, Hannes Reinecke <hare@suse.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> -		if (ns->disk && revalidate_disk(ns->disk))
>> -			nvme_ns_remove(ns);
>> +		if (ns->disk) {
>> +			int ret = revalidate_disk(ns->disk);
>> +
>> +			/*
>> +			 * remove the ns only if the return status is
>> +			 * not a temporal execution error.
>> +			 */
>> +			if (ret && ret != -ENOLINK && ret != -ENOMEM &&
>> +			    ret != -EAGAIN && ret != -EBUSY)
>> +				nvme_ns_remove(ns);
>> +		}
> 
> Uh, this is pretty ugly.  I'd rather factor the bits in revalidate_disk
> after the method call into a helper so that we can call the nvme code
> directly without the block layer roundtrip and just change our own
> more well defined status code.

Well we can call nvme_revalidate_disk and then call something like:

void check_disk_size(struct gendisk *disk)
{
         /*
          * Hidden disks don't have associated bdev so there's no point in
          * revalidating it.
          */
         if (!(disk->flags & GENHD_FL_HIDDEN)) {
                 struct block_device *bdev = bdget_disk(disk, 0);

                 if (!bdev)
                         return ret;

                 mutex_lock(&bdev->bd_mutex);
                 check_disk_size_change(disk, bdev, ret == 0);
                 bdev->bd_invalidated = 0;
                 mutex_unlock(&bdev->bd_mutex);
                 bdput(bdev);
         }
}
EXPORT_SYMBOL(check_disk_size);

Would you prefer that?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
