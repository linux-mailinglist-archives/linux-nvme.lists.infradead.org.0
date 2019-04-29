Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4821ED48
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 01:23:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TiHwvfB7KAssnsNcBLUiDoA+gmgtS4l1fzPLrA9N+3E=; b=kZT8TGF4LCsLT1pGpqrRGmmSA
	Wpah0pHoBa3XzFj58Sz+8kCf8ko/y6hdeq+1WU0XFhhmWkApfdhwLRN4eMoK1Ri92uW9KPl1U81pg
	nmPluitFZ+OKu8OH7j/UUvJit7timhpVVsKysM0gKY15xt7if6ex7WqhZCQvrwGjSdoxUJlQuprXt
	5RT/8QBb4gUBg8d5zMGcLjAPUS5wC5RsaaFeJzbmhAdxcc8uGBJjU0eX7eztY0TFU9fx0VvW/NXGd
	54a3up83Ko+o5iQWLFd7R2lXifu+ozU5TkD8j3EurTnOcrbBGoVSxD61AhQwMALQuq8NWM3TkxiA3
	AVw3TfDFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLFc4-0000PA-BQ; Mon, 29 Apr 2019 23:23:08 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLFbz-0000On-FE
 for linux-nvme@lists.infradead.org; Mon, 29 Apr 2019 23:23:04 +0000
Received: by mail-ot1-f68.google.com with SMTP id b18so1275273otq.3
 for <linux-nvme@lists.infradead.org>; Mon, 29 Apr 2019 16:23:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=cUoNLBac9bBmqLH/7SjneSbxioh8i9Y1Tu5AOiUmO64=;
 b=e4I4qhuhTD36LfKCDGwqjYfDkTgCoIdLGqFUydd+mSnEFg4RYdVcd8z22d+wyYyAZg
 4ap1NTFYAAB1o/2PK5DUBjXkRiMDbaP2vHgcA00O9sQuZiI8cBqUkj4LtzbvYe2UObOW
 I7Sd9e+czR7ksxOyn5hj2nXgixNwQT6TxOyitF7crFZls6QaTFzeMFMOl+QX1274S43u
 OGVisLSKHXpubjMwixocUWaD3S1a3mqmCgI6SWtzpzMkt90qTYMGb2uNywzr/Y2ApfRT
 JJ9hIqK9ENpH255ena7oTlykqM98rVHGCrFmmjiyWKxrx8o9VQL1FuDgKViUaKSoif15
 9nfg==
X-Gm-Message-State: APjAAAXIxx0Iuq1AzjqeFOlZq8f1HKGjn3XlW8CnZTB4SZ6Zm03+5Rwp
 0zrAPi13xyIFFrOH7jpate+AsCX8
X-Google-Smtp-Source: APXvYqySc2bwC34jQAxdwxGH61D2ZXFpaL6DaHwLPSwWo+tvEmZXFZs6FkUbuPvWn8EjWC/PBlDkcQ==
X-Received: by 2002:a9d:1ee2:: with SMTP id n89mr2654626otn.241.1556580182575; 
 Mon, 29 Apr 2019 16:23:02 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id d70sm19196121oih.18.2019.04.29.16.23.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Apr 2019 16:23:02 -0700 (PDT)
Subject: Re: [PATCH 2/2] nvme: add clarifying comments and fix some typos
To: Edmund Nadolski <ednadols@linux.microsoft.com>,
 linux-nvme@lists.infradead.org
References: <20190429173533.10366-1-ednadols@linux.microsoft.com>
 <20190429173533.10366-3-ednadols@linux.microsoft.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <ac3905e6-208b-a528-f1ff-189c2f8048f8@grimberg.me>
Date: Mon, 29 Apr 2019 16:23:01 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190429173533.10366-3-ednadols@linux.microsoft.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_162303_510610_7A14905C 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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


> Add comment descriptions for struct fields per NVMe spec.

Lets split typos from this patch. Not sure that the comments are all
that useful, as we usually have a spec/tp at hand...

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
