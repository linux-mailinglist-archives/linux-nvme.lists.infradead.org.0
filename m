Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB37618C20C
	for <lists+linux-nvme@lfdr.de>; Thu, 19 Mar 2020 22:06:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fy/tnmBh6Cfrf7fkwmqrY2jUahgGERDRIFaoNTmIppk=; b=plQ7BzcQQ2hogVAPrsZtzXPEB
	OY+/39PvQj04DxO23jFpS9YX2rqj4Vn8im2jPvCe8+VXHXWeQH7hXyiL34Lu/GWf5uKmU14QIj2OH
	tm3HCCryDnJAMNRxxNddE93at8lsQi0W3imFCzhJlPdBHFGXfI7lUgLlH5kXYA+KJSzBWqxwdysdo
	QzQVhBsVQCaIYbxxAg8r5fmLIljVQJloNe92EdCF+Qmnjb58H8ZKzoNknvkanMLPPlCn1cGXkokCS
	rFuw22hZ1Qh7VLAZS5REV9x8pjKWqsqp91Q8cYdeeXLDs8CIfemUDYBW6CnRIK4MJFgV43RpPE4Fz
	+KOzN/muA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF2N4-0006sf-4u; Thu, 19 Mar 2020 21:06:30 +0000
Received: from mail-pf1-f196.google.com ([209.85.210.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF2Mz-0006sM-Cc
 for linux-nvme@lists.infradead.org; Thu, 19 Mar 2020 21:06:26 +0000
Received: by mail-pf1-f196.google.com with SMTP id j10so2067772pfi.12
 for <linux-nvme@lists.infradead.org>; Thu, 19 Mar 2020 14:06:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=c5p75LG4qtjcxTkEoIUAAvmC+72e4Uy7YVsYx71KVjM=;
 b=AS0tqRd/fhquIWHUOmsirPGVZELMZMh0sI8l8YvQcuNuLwdnhE89wktXhMNCdQ0eFP
 TipY3d0+59A+RScTdS2gOZXv9fppWSJEJkj0xA7BBdS3mgmiXDWqMqNexbDA4LR34n+A
 EyAZIwBfGPuQgbkXdEsCwIY1GRHxWQ0PRG/2vEz0OHP1WbZWZcLjsaAuXjFFv53v4m/f
 /1lm69v2/ZmGMyu1Bt0N6qh9mw8T7hGMM4ovZAiqAo8oOlKWcss+fh0xH1ASix4YrkQq
 JmRk4XzvuNXOSl+26WDRINsoUHwwGHxbaDGD1Um/y9r8wI60ewCCHlXCiNANe58b8Hry
 eOOg==
X-Gm-Message-State: ANhLgQ3KfuZlo0+5kD2BRAQSmp2nG3mnz7Ri1JZ7IyDwslHZcd5sLTLz
 TofPQRRuhX5663uFGCiCkoNoD3dt
X-Google-Smtp-Source: ADFU+vu9b7joh8Yiie0DSr1CaRqHxFYSTJsmv/A1obhe2CV/mn70M/5AfWxqa9dciH6n+xE/HV5Prg==
X-Received: by 2002:a62:76c3:: with SMTP id r186mr212497pfc.303.1584651984659; 
 Thu, 19 Mar 2020 14:06:24 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:f092:4ccc:3e48:6081?
 ([2601:647:4802:9070:f092:4ccc:3e48:6081])
 by smtp.gmail.com with ESMTPSA id v123sm3342793pfv.146.2020.03.19.14.06.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 19 Mar 2020 14:06:23 -0700 (PDT)
Subject: Re: [PATCH] nvmet: fix dsm failure when payload does not match sgl
 descriptor
To: Potnuri Bharat Teja <bharat@chelsio.com>
References: <20200124173942.2744-1-sagi@grimberg.me>
 <20200319172339.GA29063@chelsio.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <41b757fb-5ac0-db29-9bb3-6a8b68892dc0@grimberg.me>
Date: Thu, 19 Mar 2020 14:06:22 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Firefox/60.0 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200319172339.GA29063@chelsio.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_140625_426667_60D87DB2 
X-CRM114-Status: GOOD (  12.46  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Keith Busch <kbusch@kernel.org>, Dakshaja Uppalapati <dakshaja@chelsio.com>,
 Christoph Hellwig <hch@lst.de>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> The host is allowed to pass the controller an sgl describing a buffer
>> that is larger than the dsm payload itself, allow it when executing
>> dsm.
>>
>> Reported-by: Dakshaja Uppalapati <dakshaja@chelsio.com>
>> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
>> ---
> 
> Hi Sagi,
> I see this issue with 5.4 stable kernels. Can this be pushed to 5.4 stable?

I can send this patch to stable.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
