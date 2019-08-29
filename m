Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D06A239E
	for <lists+linux-nvme@lfdr.de>; Thu, 29 Aug 2019 20:18:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7k0h4qkYLb0yzcz8lWwsPf+eUOJGMD/lp9m7wJjxj88=; b=AcYVbnS6ZbdEdNUoRg5uSzLSS
	RL5xB+9sIfXM0em0Cg5ABES1KzCsb0Rc1hhyjXsmZjHTOQVSWF0iIZO5yCGSTRIrgVF4GhDC2s1aH
	U6UrPrIpB0PN9QoAda8OmWPtEJ++Rm9SEg7NQabmsyr+cHbrNd3Yv7TsFfTCfBCmSaoJfAJyoK7A4
	5Dgyg3UUsYz7BLfyQ/sGJrTuv9mSn/vldMbR5wr/V6r0glnFvAFS5u/pSMc/KolKpl/0DRCArV80I
	L+R3QzZcqWTRCl9uD4kU29h1hO2uIJbdY+q3uapT39Jp3a1MBu6KUKrRD1we5bcwiQ0qfGB2f0yDh
	1twpxyjdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3P00-0007q7-N7; Thu, 29 Aug 2019 18:18:20 +0000
Received: from mail-wm1-f68.google.com ([209.85.128.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Ozq-0007pk-Px
 for linux-nvme@lists.infradead.org; Thu, 29 Aug 2019 18:18:12 +0000
Received: by mail-wm1-f68.google.com with SMTP id g207so721941wmg.5
 for <linux-nvme@lists.infradead.org>; Thu, 29 Aug 2019 11:18:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=CykHLngBK3k7E5aO7OZkwGgSmbj0d9Ya6V5/H6hLW/M=;
 b=a2nTItejY+Rcy78odAFLgGBilIMV0uIao+0nZHnR8ECahL1BWhV8Hf4aSEY11uPFvV
 fnd0jCGTD3J3LdY+sLGDx4t3lPDVLlXDuatI0d7/33MiEtJAmt5k2ejFNBK7nxprdM7K
 uYemyIV9+KBU92J0FMUVLHpzOl21k8m2QJze4BfM/D6Fv4IlyefJgjZEuOTfEOP8yuIZ
 l521zVhEXn2HvVMIf1VONtbJgd4fdizUVUdTwHvk0yxk2P+qqZoewHgJwoajYvzbf9IR
 b92/ZB6IXMWkI/WVKf3x4t1vT6J3lWM5yFGNIeTGzNp2P+/NCcExioezYdALZUr1gjy8
 HmxA==
X-Gm-Message-State: APjAAAUNIhxCDYSWS/sMZL73yiJpDn3WVArJnUtZwqDt9GrGp9b1+CPS
 +uTMQaqHFbaEKynQorWq5QIQOd0K
X-Google-Smtp-Source: APXvYqxOIp5Qt7/cv0Swka3tIPAGRJHa+MEu9v4HuEp89xHYrltb3eVJ6jJHiAqNB7CPbIdiiPAQRw==
X-Received: by 2002:a1c:1f89:: with SMTP id
 f131mr11742081wmf.140.1567102688549; 
 Thu, 29 Aug 2019 11:18:08 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id c8sm2240245wrn.50.2019.08.29.11.18.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 29 Aug 2019 11:18:08 -0700 (PDT)
Subject: Re: [PATCH v8 7/7] nvme: fix ns removal hang when failing to
 revalidate due to a transient error
To: Christoph Hellwig <hch@lst.de>
References: <20190823055442.19148-1-sagi@grimberg.me>
 <20190823055442.19148-8-sagi@grimberg.me> <20190825013813.GC23887@lst.de>
 <20190825205700.GA3911@lst.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <a7dca3f1-5b51-ac6a-cfee-2cb8a5e3718d@grimberg.me>
Date: Thu, 29 Aug 2019 11:18:04 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190825205700.GA3911@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_111810_846163_77C793FB 
X-CRM114-Status: GOOD (  12.18  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.68 listed in wl.mailspike.net]
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


> After looking into various revalidate_disk refactoring I think we could
> do something simple like this to just ignore the non-fatal errors
> (won't apply as is, but you get the idea):

This will quietly ignore errors even for the routine ns allocation path,
do we want that to happen?

Also, the same practice needs to be applied to nvme_report_ns_ids that
comes shortly after...

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
