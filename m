Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C766C339E0
	for <lists+linux-nvme@lfdr.de>; Mon,  3 Jun 2019 23:19:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=I71zL9iNP+bftV1KsbxaZ+PI0WqenYsq/JcfWVNkN+w=; b=mjw2cwQiXnbaB/6XTdKiYWjRc
	bCyXwNMMBNTjtj+TS9CxlwjmGmNjMzHM1iFrHKe0ueUA3RmYU55WJox8X+T8pyNqAdHXM9R2jtUoy
	IlewLfNPzZBIR28oOcGi9DR3JbO7dMBoPUMFIxzq08sOs05LymCEOeMsAfeKNmowrFybuAn3Dmj36
	Hbgjl3gyg4LWPKZmjcy4Nix+6pF8N1gkI5vWrYJeZwbsnX9i4QXQ1pBGlHg4b2KnxWpSF6YTkfqbX
	Pwjmi6I8yPZbB8CZItodQ9T3y2yMgzONeGd+GuvqtpVj6m+NQKDglJ0Nd03aAnAMf//MpncZSNStS
	drej/JBQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXuM3-0004B7-Lo; Mon, 03 Jun 2019 21:18:55 +0000
Received: from mail-qt1-f193.google.com ([209.85.160.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXuLz-0004Ao-9l
 for linux-nvme@lists.infradead.org; Mon, 03 Jun 2019 21:18:52 +0000
Received: by mail-qt1-f193.google.com with SMTP id s57so4142533qte.8
 for <linux-nvme@lists.infradead.org>; Mon, 03 Jun 2019 14:18:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=NenaP/WriyC4yhIBjyrt8wk2KyK/DAMocFkd0iqQz4M=;
 b=QLA4/RWzcPg7uIi3eM2r9j7tBZ6i2AAJB2mH2lKCYgAf/LMpoX4/6UVfNnE9rcAbit
 1MSNTZHGG4c5LknPb+pzt5mciJaRXwC+tuLAgDH0keAh0y9TECZkiUwd/rvvRR8S+JYd
 AgdlAhT85GglPShQFvtCsGOOtbZLilyEoxy1wLNlEPCW3P9DKPHneUOvgH8jczWu+y2f
 N6UF33k3s2JRffxnhJkIyE+Kq7+OL8TT7T9Svs1OdWnWPTdONNrHYfeRETVHR27oWMQ/
 g/jviYt0lgHws12bcCbv89CsQ/tm1bJbtbK9anI/A8JcDIa9x9xKMcQo5kc5qVop9ZP2
 k4Rg==
X-Gm-Message-State: APjAAAWMyL2UKj9a6hmeE1nGU1hoI/au5eZtgXaEvUGNGat9xvJ/NuJp
 PE7WKiIBWJSyFANz0CO/AtxSisl9
X-Google-Smtp-Source: APXvYqwwqaSdkzd8k4WNlTPRCKmayLT4IdGsO/6K87BujbMo8vDCGBZT1OCVORaoys3IXyFfoeKb5w==
X-Received: by 2002:aed:38a1:: with SMTP id k30mr5149087qte.159.1559596729337; 
 Mon, 03 Jun 2019 14:18:49 -0700 (PDT)
Received: from [172.29.0.86] ([52.119.64.114])
 by smtp.gmail.com with ESMTPSA id 17sm9518827qtr.65.2019.06.03.14.18.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 14:18:48 -0700 (PDT)
Subject: Re: Oops when disconnecting from inaccessible subsystem
To: "Harris, James R" <james.r.harris@intel.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
References: <3332C781-D747-42FC-8B1F-B4748961253C@intel.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <5fdea4d4-4f01-bb84-27ee-b6b51aa8a11c@grimberg.me>
Date: Mon, 3 Jun 2019 14:18:47 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <3332C781-D747-42FC-8B1F-B4748961253C@intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_141851_336309_C5A304B8 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.193 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



> Hi,
> 
> I see a 100% reproducible kernel oops when trying to disconnect from an inaccessible subsystem.  This was tested with 5.2-rc2 + Sagi's "fix queue mapping when queue count is limited" patches.

default/read/poll queues? how much queues overall?


> 
> Failure is seen when using either the kernel or SPDK fabrics target.  So far I've only tested with rdma.  Simply connect to a subsystem, remove the subsystem from the target, and then try to disconnect.

Happens with tcp as well?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
