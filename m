Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E677594FBA
	for <lists+linux-nvme@lfdr.de>; Mon, 19 Aug 2019 23:18:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=l2kIQSbOGFc/Z8hbVbQWKAUM72hepPri/Zkze3FlDgE=; b=SXcwXGg2uA7NDuSjy5P791r5c
	Oon5IIe2zPxZ6Bqfth0DxRh+r9MjCK6fdUv1rZE2v/w5z1YMQnuVIsQyDf0V+9l6vKyEuSUmTcmbM
	MDx2UTPUwyNQdk0aDkYFDxY/RFXCDszIxML+aUXXXEcaTLVvjwjuri+/Jm2j5t+oJs5A7CqYqI0aA
	5LneeA7HaF0DGoJVsqVzWRUbtkkNO+7/bQDdfOW87+HCOJoO6W8fhEChC/Azq5V/BEsk+SYT3W8gV
	ZeOQZyU/GNRfbaahp9OtOsgFDH18j4w4BY1VSlVPmMDV264lMLtDn6OSMA/r8L5VDJcHbDVRuC+6b
	DNlHPzjFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzp2L-0005e4-IK; Mon, 19 Aug 2019 21:17:57 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzp2C-0005dP-QF
 for linux-nvme@lists.infradead.org; Mon, 19 Aug 2019 21:17:50 +0000
Received: by mail-ot1-f65.google.com with SMTP id o101so3043296ota.8
 for <linux-nvme@lists.infradead.org>; Mon, 19 Aug 2019 14:17:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Iaf9uTw5RRpqXWMcFy0w3sEb9pCbcDKI4jRiTBEYduE=;
 b=ZtNhFYTfiE7KtPmQitOvRXtksyVipuuQIgcn0n7lDMIZvsKK0QUxWa73L6Z5vh7Dv8
 uTDTMsJ5ZqpCNlkxl93wfTvwkBaM/TivxXseI9xt9mNulGN2wxHhhBukNf9NlshCYZtH
 TbMTKCyDYr4MwwuOd9ojB2kmUUfKiboMiGHI2n97JmJDzQH+c7I0MD1BFLSx78E51M53
 sbOmU2bXPmbsft4LbJG7Fp52aLAZKGm/X99g8SZmtX40IouXNqveiMiwZSPRc6br+LQ9
 ekhMWL64VDrsvA6RXSvda8Eu6c4n4TT//Wpcqq35Tjc1pRc/O4oKCJsGY91RLtXD+C1z
 0KoA==
X-Gm-Message-State: APjAAAX2sc/6SuW9vc/PbFylP/djt9wuXYDx4S72hT/f5qhhKUYgSO1B
 siZkoWX7wu0XeY2/gBicYLM=
X-Google-Smtp-Source: APXvYqzVklZHzjmbCvcyjX8kF8qoGJddjflSMpPgKnPeOL6Rzo0XqqEYgmht/PsFTogegcWZRjgaqg==
X-Received: by 2002:a9d:5d18:: with SMTP id b24mr20248731oti.264.1566249466955; 
 Mon, 19 Aug 2019 14:17:46 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id 20sm5979925otd.71.2019.08.19.14.17.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 19 Aug 2019 14:17:46 -0700 (PDT)
Subject: Re: [PATCH v2] nvme: allow 64-bit results in passthru commands
To: Keith Busch <kbusch@kernel.org>
References: <89520652.56920183.1565948841909.JavaMail.zimbra@kalray.eu>
 <20190816131606.GA26191@lst.de>
 <469829119.56970464.1566198383932.JavaMail.zimbra@kalray.eu>
 <20190819144922.GC6883@localhost.localdomain>
 <1d7819a9-9504-2dc6-fca4-fbde4f99d92c@grimberg.me>
 <20190819185749.GA11202@localhost.localdomain>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <e639f7ce-5f1a-d4a5-f80e-9bf3bc1ff638@grimberg.me>
Date: Mon, 19 Aug 2019 14:17:44 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190819185749.GA11202@localhost.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_141748_863487_018D9192 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Marta Rybczynska <mrybczyn@kalray.eu>,
 Guillaume Missonnier <gmissonnier@kalray.eu>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>, axboe <axboe@fb.com>,
 Samuel Jones <sjones@kalray.eu>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>>>> ----- On 16 Aug, 2019, at 15:16, Christoph Hellwig hch@lst.de wrote:
>>>>> Sorry for not replying to the earlier version, and thanks for doing
>>>>> this work.
>>>>>
>>>>> I wonder if instead of using our own structure we'd just use
>>>>> a full nvme SQE for the input and CQE for that output.  Even if we
>>>>> reserve a few fields that means we are ready for any newly used
>>>>> field (at least until the SQE/CQE sizes are expanded..).
>>>>
>>>> We could do that, nvme_command and nvme_completion are already UAPI.
>>>> On the other hand that would mean not filling out certain fields like
>>>> command_id. Can do an approach like this.
>>>
>>> Well, we need to pass user space addresses and lengths, which isn't
>>> captured in struct nvme_command.
>>
>> Isn't simply having a 64 variant simpler?
> 
> Could you provide more details on what you mean by this?

Why would we need to pass addresses and lengths if userspace is
sending the 64 variant when it is expecting a 64 result?

Or maybe I'm missing something...

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
