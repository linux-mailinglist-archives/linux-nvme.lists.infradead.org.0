Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D070111D7E7
	for <lists+linux-nvme@lfdr.de>; Thu, 12 Dec 2019 21:32:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cIVanUi1tpCz4qBa8HS+N30/UskBwCQLLEPbZM6dxbk=; b=p9cEledI3I/ooWiy5vVnPUHOT
	CPrbD9jcYhGQcq/SE2Z9xT4ai7FypBlLlv2hDBzUTdbecgXYqlrVabpYsZDdeQhQSvFOThkeQZi5j
	xnl1do+cL1t2rqTVZCIkTvkNHq0o9gNwigwbE5bukrfvHqtdFBzorAkNyoSjLkfN5TCCn/lyYfXjo
	3UVvymkJMTMGPl6tWVPSxaT2UkNIGaDbU2hHQ18VNFlkviPRzzSY4oKytCa4EJvIksv6lBS84Zgjs
	SsnLEEGHLHbXI+Hm1RHDO0uyA4L5bvOLrxlgoVGFJW1Gk57NKFzfoWx64SXFmAvrc/Yqfbgc9aOAE
	kxKTNH6Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifV84-00014a-VS; Thu, 12 Dec 2019 20:32:08 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifV7z-000144-Tk
 for linux-nvme@lists.infradead.org; Thu, 12 Dec 2019 20:32:05 +0000
Received: by mail-oi1-f194.google.com with SMTP id i1so147928oie.8
 for <linux-nvme@lists.infradead.org>; Thu, 12 Dec 2019 12:32:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=9mvigXA9eqEiL3COdxuF3UHdw/egmTfNBKSE6O/n5cM=;
 b=uGA2H0DsDaeUQVFpmuOrtbsMdRBuPFwgOLp/vZby3mBJGF5FMFs3e9MZyrrqWxaBzD
 ishoOpWt+CJB3zzpS56sgOvrY1k7CrRwwcQ/fWxvRJTStZKZpGw2OJyjJ8nSE5spAPyr
 WykTqz00g3Egt6nBZYQJNzMSNQn01kvpVoM53CLltPBvICHEuszdpvKqSYGTXIIc6IpQ
 2ma5nLP1xhxieQT6DnOg1rM7x8RjKNfUzU7qMg3SMUE1vewxtdcHKehtVbkrkIa54EIF
 y2vvk28TPQvXUsAImSCJQMP5QlqNG18qLdmjv6CmrfLlV7btObCC4KLBOLTEy618lGuF
 kNnA==
X-Gm-Message-State: APjAAAU0ZSxkzwT3XwpZJswLkw9ajy/Cc4wgSeYvnux4y1CIWAb8+10/
 yfe2FFscHQ0wwi8PVWAv+TWgl2vt
X-Google-Smtp-Source: APXvYqyZWdiSUJFl18/Bvtvv2EbJ80g2yG0meRt/1NiAonxEz4Q48imWDNDrizy7G5338MjqZrDA5Q==
X-Received: by 2002:a05:6808:285:: with SMTP id
 z5mr6427176oic.127.1576182722177; 
 Thu, 12 Dec 2019 12:32:02 -0800 (PST)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id e65sm2522789otb.62.2019.12.12.12.32.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 12 Dec 2019 12:32:01 -0800 (PST)
Subject: Re: [RFC PATCH 0/2] nvmet: add polling support
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>, "hch@lst.de" <hch@lst.de>
References: <20191210062557.5171-1-chaitanya.kulkarni@wdc.com>
 <fe370161-13d7-a005-2666-968107be13bd@grimberg.me>
 <BYAPR04MB57495A09DE5E7652E2B38AAF86550@BYAPR04MB5749.namprd04.prod.outlook.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <ed3638c6-7506-4ac6-a2ab-df432b2111b6@grimberg.me>
Date: Thu, 12 Dec 2019 12:32:00 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <BYAPR04MB57495A09DE5E7652E2B38AAF86550@BYAPR04MB5749.namprd04.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_123203_957664_9C198E50 
X-CRM114-Status: GOOD (  13.51  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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
Cc: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> percpu threads per namespace? Sounds like the wrong approach. These
>> threads will compete for cpu time with the main nvmet contexts.
>>
> That make sense, how about a global threadpool for target which can be
> shared between all the subsystem and their name-spaces just like we
> have buffered_io_wq?
>> Have you considered having the main nvmet contexts incorporate polling
>> activity between I/Os? Don't have a great dea on how to do it from first
>> thought...
>>
> 
> I am not able to understand nvmet context, can you please elaborate ?
> Are you referring to the pattern we one have in the
> nvme_execute_rq_polled() ?

No, we would want non-selective polling. Right now we have nvmet context
starting from the transport going to submit I/O to the backend, or
starting from the backend going to submit to the transport.

Ideally, we'd have these contexts to do the polling instead of a 
different thread that will poll for as much as it can taking away
cpu time?

One way to do it is to place a intermediate thread that will sit between
the transport and the backend but that would yield an additional context
switch in the I/O path (not ideal).

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
