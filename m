Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBA6B50CCE
	for <lists+linux-nvme@lfdr.de>; Mon, 24 Jun 2019 15:55:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=N3c8RN5dDtAGhULqK5bF99NGqLbKtV4NzqlWoIzGBGs=; b=ciz7o0Zc/YnkdU9XG/ezuAvkB
	eXnKlwHGf/TO4uWieB25QvvOH2TsqI2EL6YlF7UNfii/XTgTlEFCLV66rCGLIFzLeiGQcw0h1ezRK
	EXqCqTW9Toxy9d1ggD0YA2TbaAvUBHDSnKgGbaFxvJWnM49yFJF4OrGyCe1cAb4ug+fqnDXacZExW
	B8QEIVhk0m2y12pi9m/mwjTW/UHz0cE5ZVPOkm+L9SShxSMVz8hhFJT0Z7Xu/6t3FjZKIVGEVue1O
	kcy5On6IopZozo6994WqNN0eWV3P/+NCtXnfRTnYF9VG3OxoJbyY/5MZi30NKmn1L7mpzahHwrw/5
	fs09fR+qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfPRV-0004yc-Io; Mon, 24 Jun 2019 13:55:33 +0000
Received: from mail-pl1-f195.google.com ([209.85.214.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfPRN-0004yJ-Cl
 for linux-nvme@lists.infradead.org; Mon, 24 Jun 2019 13:55:26 +0000
Received: by mail-pl1-f195.google.com with SMTP id a93so6954401pla.7
 for <linux-nvme@lists.infradead.org>; Mon, 24 Jun 2019 06:55:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=8GM8Orbo0HHYS+wVDqjkftG4wzq05KYTyWr4u0WAyNM=;
 b=QMNSxC5hy34Zlxcwb538TRmcqxL/Zs+HUysok3E3L7bhxf7HqGL84jzQxQU3HmMeOw
 8R1K35oPZAcZAMR/IiS7Vu9NJVXRLjZEfS6164e8Os+XwvTqjc0CUbKrS3GzTs80iH7k
 h8azNvXnih1n0CbUAMGMobkWYOYQ4Y/etjWD96jwBvQXUeHvCmkdsehtkJj4Cxq3J+6n
 XNkd7VpBGvq29WBOl2BBUT8kfFGSk4hkkBaw9s5xzfWUJe+EBBAVZy0qh9rvFDdx4CRY
 heqwdRVW1AW5BBjR+xmvMkl7BPFu7qbG+ya0uNjoKJB302/GHfrUOVt0m/Zru7jRguG4
 1liA==
X-Gm-Message-State: APjAAAWDNdz60U2p5koBxgufDDJYUVim8PrytX+PaN1j+B7VDXSRhjbO
 s2azdUFIMdksC+65fYiR784=
X-Google-Smtp-Source: APXvYqyxB3zNEQclE6fKfyL4Us9M29JBKBTbfqck8Th7He61G+X1EZ2KpGSY0rH3BlDEsQMW6gF4Ow==
X-Received: by 2002:a17:902:9b81:: with SMTP id
 y1mr126618889plp.194.1561384523940; 
 Mon, 24 Jun 2019 06:55:23 -0700 (PDT)
Received: from asus.site ([2601:647:4000:5dd1:5456:b719:b64b:809c])
 by smtp.gmail.com with ESMTPSA id p2sm15636038pfb.118.2019.06.24.06.55.22
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 06:55:22 -0700 (PDT)
Subject: Re: [PATCH nvme-cli 01/13] Remove superfluous casts
To: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>,
 linux-nvme@lists.infradead.org
References: <20190619173701.8263-1-bvanassche@acm.org>
 <20190619173701.8263-2-bvanassche@acm.org> <87tvcfnw05.fsf@solarflare.com>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <4fbac30a-51f0-95a7-7146-28805103f6a8@acm.org>
Date: Mon, 24 Jun 2019 06:55:21 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <87tvcfnw05.fsf@solarflare.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_065525_431881_0DE207D3 
X-CRM114-Status: GOOD (  13.47  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.195 listed in wl.mailspike.net]
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Sagi Grimberg <sagi@grimberg.me>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 6/24/19 3:00 AM, Mikhail Skorzhinskii wrote:
> I'm not completely sure that anyone interesting in fixing this, but this
> change breaks compilation on anything with glibc v2.24 or lower. This is
> due to long lasting bug #16458[1] which was fixed 2 years ago and landed
> in glibc v2.25.
> 
> I noticed it due to compiling it in rhel7\centos7 which is using glibc
> v2.17.

How about restoring RHEL 7 compatibility with the (untested) patch below?

Thanks,

Bart.

diff --git a/nvme.h b/nvme.h
index a149005a0425..ecac52d4d172 100644
--- a/nvme.h
+++ b/nvme.h
@@ -119,19 +119,31 @@ struct nvme_bar_cap {
  #define __force
  #endif

-#define cpu_to_le16(x) \
-	((__force __le16)htole16(x))
-#define cpu_to_le32(x) \
-	((__force __le32)htole32(x))
-#define cpu_to_le64(x) \
-	((__force __le64)htole64(x))
-
-#define le16_to_cpu(x) \
-	le16toh((__force __u16)(x))
-#define le32_to_cpu(x) \
-	le32toh((__force __u32)(x))
-#define le64_to_cpu(x) \
-	le64toh((__force __u64)(x))
+static inline __le16 cpu_to_le16(uint16_t x)
+{
+	return ((__force __le16)htole16(x));
+}
+static inline __le32 cpu_to_le32(uint32_t x)
+{
+	return ((__force __le32)htole32(x));
+}
+static inline __le64 cpu_to_le64(uint64_t x)
+{
+	return ((__force __le64)htole64(x));
+}
+
+static inline uint16_t le16_to_cpu(__le16 x)
+{
+	return le16toh((__force __u16)x);
+}
+static inline uint32_t le32_to_cpu(__le32 x)
+{
+	return le32toh((__force __u32)x);
+}
+static inline uint64_t le64_to_cpu(__le64 x)
+{
+	return le64toh((__force __u64)x);
+}

  #define MAX_LIST_ITEMS 256
  struct list_item {
-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
