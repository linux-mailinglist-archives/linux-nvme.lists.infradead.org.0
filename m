Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDAF5988DD
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 03:10:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MrByTydyeXzalZ3/IQdF5ld2MfL5fJwv7wpF8DVHwqQ=; b=homfL10hVhpntq9DVnunoaH2q
	sExEnTHDzt13tmYcJzyZEalbbqsNiFg6Ml1oWR+FYi9pHanM2Wdhejg5vVYqeZ02q+T6NhprjnozN
	1l4AgwYkkOO/FcBzE6blRO68qLnWhBf/32M60yurXjW3PeNyO+l75PCYWblMaC2z7tXaD13R8/gdf
	nMXZCqNb7zNBYpTVOeTkEKhx6pmLZGg7jbtKk2Akw38AaUQjAMeaBtvNt/nk9lBJWE8b/qbKZyAGs
	ajc5NO7dvwTgOAWgf1WsoC3wa6ArN4FatB1V+dirFR5R+1k2s92X2ijSFx6J3ly/9ByUmHHAzwZ3i
	uYw+s66PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0bcR-0004t3-Gh; Thu, 22 Aug 2019 01:10:27 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0bcM-0004sJ-9x
 for linux-nvme@lists.infradead.org; Thu, 22 Aug 2019 01:10:23 +0000
Received: by mail-wm1-f66.google.com with SMTP id o4so3931016wmh.2
 for <linux-nvme@lists.infradead.org>; Wed, 21 Aug 2019 18:10:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=bXCm7ZQ4FzLMFKG+LI8Q7xT+nU21Eq2C+ITPgacuAo8=;
 b=qJGCCTUq4GC5USy6ykzl9YVtV12y1x2xpPIcppF1lu+GHDoc8n00WuxQffUMiXJ1a5
 moAwrVPVd3tbPgxXpAK++ie3IvAbIMIaYCEJifKSQW8Hl0tEvaPgH7Yk0bBR+9nwj7/3
 GUrsANvRfIIqZgTfJ5Kq4zl0vNUkUUt+jxz9U/dmG3wC646mHAnlvdsTCOThdnXU4ZGd
 rI991cwcXPWE6QMMlwrc9Z0Gk8gE8QILEUZPSa2n2d4dLbDht8+tsSfALxp1rjaHiho0
 eO4cF6NB7VUOnnQ2K4H48U6wThEw02oEWgOUCsMJYEwr+9Ov0RQWXWkZv05qAg/So/97
 pmng==
X-Gm-Message-State: APjAAAVi/c+DpbF6tCbPJfg1K+PRDp0HRO0ByZ9ixeHIKdDDukY1i9YD
 jH9OAtm/JL1EfVOPIBdH4uHq/lME
X-Google-Smtp-Source: APXvYqxr8EbGV4IymZBkEuHm+x8FZkhoeARxgHQD3ox6e8W+bAWLLgoIKYzfgky6Clq8rSAG6gi7ZQ==
X-Received: by 2002:a1c:356:: with SMTP id 83mr2958948wmd.40.1566436216307;
 Wed, 21 Aug 2019 18:10:16 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id d69sm1574071wmd.4.2019.08.21.18.10.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 21 Aug 2019 18:10:15 -0700 (PDT)
Subject: Re: [PATCH v6 7/7] nvme: fix ns removal hang when failing to
 revalidate due to a transient error
To: Christoph Hellwig <hch@lst.de>
References: <20190813064304.7344-1-sagi@grimberg.me>
 <20190813064304.7344-8-sagi@grimberg.me> <20190822004951.GQ10391@lst.de>
 <a975f0ee-ee78-4551-5419-0be3c24b3451@grimberg.me>
 <20190822010632.GA11242@lst.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <cacd3fd3-55c4-6181-fd6f-dba62c49cf28@grimberg.me>
Date: Wed, 21 Aug 2019 18:10:12 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190822010632.GA11242@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_181022_349714_9E574771 
X-CRM114-Status: GOOD (  15.32  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Keith Busch <keith.busch@intel.com>, James Smart <james.smart@broadcom.com>,
 linux-nvme@lists.infradead.org, Hannes Reinecke <hare@suse.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> Or rather a variant of nvme_revalidate_disk that preserves the nvme
> status values.
> 
>> void check_disk_size(struct gendisk *disk)
>> {
>>          /*
>>           * Hidden disks don't have associated bdev so there's no point in
>>           * revalidating it.
>>           */
>>          if (!(disk->flags & GENHD_FL_HIDDEN)) {
>>                  struct block_device *bdev = bdget_disk(disk, 0);
>>
>>                  if (!bdev)
>>                          return ret;
>>
>>                  mutex_lock(&bdev->bd_mutex);
>>                  check_disk_size_change(disk, bdev, ret == 0);
>>                  bdev->bd_invalidated = 0;
>>                  mutex_unlock(&bdev->bd_mutex);
>>                  bdput(bdev);
>>          }
>> }
>> EXPORT_SYMBOL(check_disk_size);
> 
> No need for the GENHD_FL_HIDDEN check as the caller knows,
> and EXPORT_SYMBOL_GPL please.

If we make nvme_submit_sync_cmd return a positive error status,
then we need to make nvme_identify_ns return status and get the
id by reference like nvme_identify_ctrl, otherwise IS_ERR() won't
work.. Hannes objected to this practice, but I have no problem
changing it back...

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
