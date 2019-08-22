Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE2AB99CE8
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 19:39:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=I6Eu4As7ZZ/jgLSc9JvVl0GpdZlBvZvBc0UTCJA74P0=; b=qVPBqAlYYRlAyy9WXb47wm/hI
	vB69YoILsJG0/trvno9+sNieSFdL9tS12MetcNto6NpyhEypSoA7z1lII2aDriPIIICQrWxLCpD7s
	332GQ9DxZ8BcbHaZnUIOZNVp+2mdnQDP/5J/OjfMsIvGMV9Tgec4sRhelf/jektRf98WOTZ7v0Htv
	r1twqTdHIUSm+xEjQlPwVJmNKU9gh+RZ4r+72x5Bd/thCYKAeKaTSaSjH22QpzY3poaAY0+7onl9w
	u/cDHn567OXsWPS6FpkOOgNYnFn7u2XvRwhzNOd4OEj8f8Im7hBcKxLeraeAv9M4ZObUCrrsDbX7O
	KolItzOGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0r30-00044y-88; Thu, 22 Aug 2019 17:38:54 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0r2s-00044c-HJ
 for linux-nvme@lists.infradead.org; Thu, 22 Aug 2019 17:38:48 +0000
Received: by mail-ot1-f66.google.com with SMTP id w4so6197800ote.11
 for <linux-nvme@lists.infradead.org>; Thu, 22 Aug 2019 10:38:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=hBqdZaySFAkacLMiF0ZdID4dUTSOOVfDtcLu2AlhCj4=;
 b=EM2a9BZQ3Z//OkJkFVsN29e8nDEtC/BSnbJXpBChEygztQlEuDrtDKBRoKKZDcY34M
 MEhqvF08klSNpcsUlNmcJc4ppmFN4zrgQ6IJ3MLTjF8Yz1nHzjO0qAqIOB8u1ekBAtkh
 +DD+xrb7s+Q241OvOMT7w5yjflodzg8CTEfH7RuaI3dSxsR6sHs2fpC/wZELdJfuEMXJ
 N1lLOK1r+1s9FC1JQlzJ4NQERwP1ZRTA2BwJ8W0ijRraesM9hP9X47EdnyYXUBT9z0yL
 TR6x4Ddtl9N0OKpRWo4e1KgIl1l56kbDLP9VK6jDTl3qyU2zn6FBv9pU+k92QC85jXiK
 ebjw==
X-Gm-Message-State: APjAAAX/Fca2gmd4cK0ewPDr0ayBK59/erN+uqUVWdvyJ/oCw3B5zmVV
 okIhINxKhg+fRPNjmbzxRp8=
X-Google-Smtp-Source: APXvYqxw3XUjQX/od6eM/BSlTTVIf9yCxHCXJCWTqPCC2sxhc/V1WzVoqRcEZjxsQRKGrFtirLF0Kg==
X-Received: by 2002:a9d:7383:: with SMTP id j3mr705293otk.74.1566495525462;
 Thu, 22 Aug 2019 10:38:45 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id l16sm74348otq.42.2019.08.22.10.38.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 22 Aug 2019 10:38:44 -0700 (PDT)
Subject: Re: [PATCH v6 7/7] nvme: fix ns removal hang when failing to
 revalidate due to a transient error
To: Christoph Hellwig <hch@lst.de>
References: <20190813064304.7344-1-sagi@grimberg.me>
 <20190813064304.7344-8-sagi@grimberg.me> <20190822004951.GQ10391@lst.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <6e9734ac-7ad5-a7c2-e6b4-da64e1c3465c@grimberg.me>
Date: Thu, 22 Aug 2019 10:38:42 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190822004951.GQ10391@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_103846_576572_D9A95E77 
X-CRM114-Status: GOOD (  18.57  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

We actually don't need to separate revalidate_disk, we can just
propagate back the nvme status code, just have:

--
diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index f340903937d7..503e263e63c6 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -3456,8 +3456,17 @@ static void nvme_validate_ns(struct nvme_ctrl 
*ctrl, unsigned nsid)

         ns = nvme_find_get_ns(ctrl, nsid);
         if (ns) {
-               if (ns->disk && revalidate_disk(ns->disk))
-                       nvme_ns_remove(ns);
+               if (ns->disk) {
+                       int ret = revalidate_disk(ns->disk);
+
+                       /*
+                        * remove the ns only if the return status is
+                        * not a temporal execution error.
+                        */
+                       if (ret && ret != -ENOMEM &&
+                           ret != NVME_SC_HOST_PATH_ERROR)
+                               nvme_ns_remove(ns);
+               }
                 nvme_put_ns(ns);
--

I'll send another version for review...

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
