Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 834881EE8E7
	for <lists+linux-nvme@lfdr.de>; Thu,  4 Jun 2020 18:53:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5G+aj2zSSE4KiqVLDTjl6z/8qgigWhhr8r8ud+hAccc=; b=CtI5zXlO6q4niZT3KvpA4AF/Z
	XC28/lSXmFaBaUYoqvZStDjsG/PDbbW+4Je7mHNlUgiDHyM+YjULocvXpLWkOTPe3XbDU6vLUhZdR
	/WgajG3uSPDiu8T/eXq4hXGz2CETh8V9rHWgpETW0OEO9BYIaYbJB5oq1PM+D39xebkBv/S8tb9Uk
	6fqaHWBDEna92ljEklyy8tNtO5J+Mz0V7DqH4ThTJ9AstLpKHb3cU+yP6nv0zOnBV8dI3p/r/+B6Q
	PoHOjYvg07NavN0kvWb8yULXQST2FohfHou4S65amVk/Sf1aoZ48kQ+Mt+WOUhXS0AakQLK09WeoC
	8bOsIp5+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgt7e-0006Fs-Ej; Thu, 04 Jun 2020 16:53:42 +0000
Received: from mail-pj1-f65.google.com ([209.85.216.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgt7a-0006FZ-7Y
 for linux-nvme@lists.infradead.org; Thu, 04 Jun 2020 16:53:39 +0000
Received: by mail-pj1-f65.google.com with SMTP id i12so1372690pju.3
 for <linux-nvme@lists.infradead.org>; Thu, 04 Jun 2020 09:53:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=OsHni/8iCutuJbxJAGMmBVXGyNY5kAnu7JchHKKo89c=;
 b=JNQqiKNJtAPxKMTZy4l+U4iRVdK8C5n77J7meCnGsvTNDzmriIgNsEXPtDAM3ngvB6
 A0k9OargHcyX6PtBuZl0ZXXBBFcPUzp2Mr0+nYnLJI38Mz6ugpblEq8B+2mHVsGjsIaI
 1mwoCp5+S4Lt8x46d7vcrn8gyd3bg1wB/DB6EfVXfuNrvCvM1LsfS5FZY5NAHK9ZKK83
 knfypVcyFOyg4DunXvCaK/mAwOMt5OaDCFddykbeiP8Wpyuq4Pq9jf/hg2YcIiWRVtPb
 h7PnAW+hohgleLrcXSrR1mktYk3g8aqBU+8fSoGC047AAHPVdWZVQsIgcKSywWx8w0uB
 SYtw==
X-Gm-Message-State: AOAM530iRtTUNLyXjJqPrjm8R3PS742MVVCfrAQBljpRkIRCCkL86e5f
 6cEKEx5FZsG4YkfqgkQDOpU=
X-Google-Smtp-Source: ABdhPJw9qR4CfE7mcvz6AC+8LmppKMUiBqTYWGMhQXr3MNTlDBop9TXiBQmXeXM1QXAsVH3Bl2QZkg==
X-Received: by 2002:a17:902:9a08:: with SMTP id
 v8mr5615388plp.90.1591289617302; 
 Thu, 04 Jun 2020 09:53:37 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:35c9:507c:6c7a:323b?
 ([2601:647:4802:9070:35c9:507c:6c7a:323b])
 by smtp.gmail.com with ESMTPSA id h3sm5675257pjk.10.2020.06.04.09.53.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 04 Jun 2020 09:53:36 -0700 (PDT)
Subject: Re: [PATCH 0/2] nvme: fix reconnection stalls
To: Hannes Reinecke <hare@suse.de>, Christoph Hellwig <hch@lst.de>
References: <20200604115602.78446-1-hare@suse.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <920dd910-2204-f7c1-b825-c9476863f071@grimberg.me>
Date: Thu, 4 Jun 2020 09:53:34 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200604115602.78446-1-hare@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_095338_269562_6A2C2314 
X-CRM114-Status: GOOD (  13.79  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.65 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
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
Cc: Keith Busch <keith.busch@wdc.com>, Daniel Wagner <daniel.wagner@suse.com>,
 linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> Hi all,

And here we go again.. :)

> during testing we have come across namespaces not being available
> after reconnection. This is caused by (yet another) deadlock between
> reconnect and scanning; reconnection will wait for the scan workqueue
> to be flushed,

I have a deja vu moment here, but where exactly the reconnection waits
for the scan work to complete?

> but scanning cannot make progress if I/O is
> outstanding, as the I/O will only be completed _after_ reconnection
> completed.

Where is there a dependency for I/O complete only after reconnection?

> The particular issue here is that nvme_revalidate_disk() might be
> several I/O to be sent; the first one (IDENTIFY NAMESPACE) will be
> terminated, but the subsequent ones are not.

Why aren't they? we unquiesce the admin queue after we tear it down.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
