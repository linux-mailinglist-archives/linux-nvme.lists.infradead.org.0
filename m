Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA5894D47
	for <lists+linux-nvme@lfdr.de>; Mon, 19 Aug 2019 20:56:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qepnWXlSGKiSLfAkibIi/FLnpGr4rL8fiYgWwU/2iTE=; b=Q38cAEgAw4/uVLOZTbIoLA/rn
	dbXQH/E3QYZ+7mSq4X8PVRGNC5Cd3bwuI5gt217IJLqY85RwtEaCj1oJ6PbzI3KLP/+VXhylwjoM2
	du41IuD1y81C+mNErLkkkFhUguQ9UpCmHEaoU2QupJaBSiAjIOaNCwmWnkcbbNvOLIojNSWBKqXDa
	y+Ney0yxI0Zs6gsVIlEdxVBOGZ2i9RZOXrN4rgPuq9aCDiJOBDdJBE0w6PiNinj9Qcp1r5vtEOywy
	0pqWbZwxdC0bF9jrRF8Rz3vvlf4C+yT/hnhsk3oIL1Z+2BbU9EIAx0qTzy3EyB/6pzOw36uF/hItY
	zzR6ZlmFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzmpk-0002rU-H0; Mon, 19 Aug 2019 18:56:49 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzmpT-0002qx-O3
 for linux-nvme@lists.infradead.org; Mon, 19 Aug 2019 18:56:32 +0000
Received: by mail-oi1-f196.google.com with SMTP id 16so2133286oiq.6
 for <linux-nvme@lists.infradead.org>; Mon, 19 Aug 2019 11:56:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=tJabmsRw01PznvjuHTMzfnUeC7QEKWTxZb/URwGZ0WQ=;
 b=ZvVFkAf71G49HXumwmIqBRZtxftzLx7DCQfc4RgHdxKA68FB2f8UNjipDAevpcJlgi
 oN2WMp/KYnzAAciZjenQq7OFJDbHlTzA4wnnMvSFCD+EkzOTYVYtCuH62MXcY13/hRPC
 YTrjnWVLUH6t3aEhBvQnK909Qd5wIk23QsGKl0zUSFdPml9ihuT9rU7R0N00V0BkvXv8
 m8VaJ3zQINRZp9OTPkdA1NASUfn6Z1k+7rwgIFNwd/OUTpYipKyD0Ne+yQ61MiBsjnqY
 dWM6UhXEqN83r6ZU4cYF1Qmq19srd/iiCC2gqrPGR1znGscBvZvSVBHUBEeAdtTxISUG
 b8ag==
X-Gm-Message-State: APjAAAVNroSbST2Hx0e6I6NfdAaysriROwoqUVH7c2/mWJMK2P/4eB5l
 0VLMLCHJdg11fkSePD90RwZE9MG3
X-Google-Smtp-Source: APXvYqx6UzH+ZYpAr3LPh+sJddeZPmFeTiRX5UUvg9/w+dTM7uk2IFNSKk4q9oC2k6K+O2IQln+QrQ==
X-Received: by 2002:aca:5e06:: with SMTP id s6mr14751814oib.171.1566240990991; 
 Mon, 19 Aug 2019 11:56:30 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id n22sm5366303otk.28.2019.08.19.11.56.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 19 Aug 2019 11:56:30 -0700 (PDT)
Subject: Re: [PATCH v2] nvme: allow 64-bit results in passthru commands
To: Keith Busch <kbusch@kernel.org>, Marta Rybczynska <mrybczyn@kalray.eu>
References: <89520652.56920183.1565948841909.JavaMail.zimbra@kalray.eu>
 <20190816131606.GA26191@lst.de>
 <469829119.56970464.1566198383932.JavaMail.zimbra@kalray.eu>
 <20190819144922.GC6883@localhost.localdomain>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <1d7819a9-9504-2dc6-fca4-fbde4f99d92c@grimberg.me>
Date: Mon, 19 Aug 2019 11:56:28 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190819144922.GC6883@localhost.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_115631_786296_3180A289 
X-CRM114-Status: GOOD (  12.49  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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
Cc: Samuel Jones <sjones@kalray.eu>,
 Guillaume Missonnier <gmissonnier@kalray.eu>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>, axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> ----- On 16 Aug, 2019, at 15:16, Christoph Hellwig hch@lst.de wrote:
>>> Sorry for not replying to the earlier version, and thanks for doing
>>> this work.
>>>
>>> I wonder if instead of using our own structure we'd just use
>>> a full nvme SQE for the input and CQE for that output.  Even if we
>>> reserve a few fields that means we are ready for any newly used
>>> field (at least until the SQE/CQE sizes are expanded..).
>>
>> We could do that, nvme_command and nvme_completion are already UAPI.
>> On the other hand that would mean not filling out certain fields like
>> command_id. Can do an approach like this.
> 
> Well, we need to pass user space addresses and lengths, which isn't
> captured in struct nvme_command.

Isn't simply having a 64 variant simpler?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
