Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 777BA15B12E
	for <lists+linux-nvme@lfdr.de>; Wed, 12 Feb 2020 20:34:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z1fMvao11i+d0UZrbIxXcd2/3fEWA/mH8uzwOCutGXo=; b=HWrQo5r9YJH8zbXuU2Kzz5n1/
	DeKyPccBB9vYkHmCoQUXAfhX1b067h9sq/PPTN1NnaIwDVdg9lUrbKC2YLoSMkkPGrGfxfmVt/Be7
	uG7IONBbbaG1AOhq1NQSIpZRfITbpECICU4f9fBRcQc/aMqhY7DT7eVHgk/dRColEqdONUwf5IU8G
	2VPYzLXygruiVpLx3JhjlYBMlZ2ItffT+KrR77BQPsan4I1W4o9AU6MNi9XEK6TRx0RZZHEZmeMXE
	ltMebc6W2z/koz72wkjJeDC5ZyOI2R51uzxYhPwH1q3sw0kkcgtoXuZsvoyouMaRWjZvhrv86yX/o
	Wemxv0WBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1xmg-0004S4-5E; Wed, 12 Feb 2020 19:34:54 +0000
Received: from mail-ot1-f52.google.com ([209.85.210.52])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1xmc-0004Re-Dp
 for linux-nvme@lists.infradead.org; Wed, 12 Feb 2020 19:34:51 +0000
Received: by mail-ot1-f52.google.com with SMTP id h9so3098024otj.11
 for <linux-nvme@lists.infradead.org>; Wed, 12 Feb 2020 11:34:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=kXIra+Ul/P213paTi1c5kGjaBZ9Nt27uKSvOxjlC4sMJMvkMr1K5lAbCw3SnywbJ8E
 PnlTOhqcpmLPKj/9U3hO6C0cVnLNZujDc5fakHB0m5P7DrwJyElJ8+CSogvyLRKLKgm8
 lH16kUdHl7T3wJ965WPMDrk8zGwmI2Ljwc9L4x8hZCGxfXiXQOdvuZr8Gin0L1DZJYf3
 qGP8WclkTGEY7i2LzgtR2KYUR8Pkq0QVm0+urxhgXI54DkNILsp/b8aXmnfkth/FMxtZ
 CpP2gUaCpO/g/btliXz4YacAdx/gxBv6uWNEwmejGe+HEcZVjpfZCzWl0yQ//2XwoKhW
 5nRQ==
X-Gm-Message-State: APjAAAWKjgZ5INmQ/pN/QJf50b9ydpQL8gHE7X5HqNoIuXovASxiG0iJ
 xnE8HydCoZUlOS/4UwDKBws=
X-Google-Smtp-Source: APXvYqyaHBezHoDDovNnwOdoMUCdp+LysRT2/aBHyGSyrb338uRn0FrbL0fdsJSJRWWpuEIEDE9qQQ==
X-Received: by 2002:a9d:32f:: with SMTP id 44mr10233908otv.234.1581536088858; 
 Wed, 12 Feb 2020 11:34:48 -0800 (PST)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id t132sm403776oie.8.2020.02.12.11.34.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 12 Feb 2020 11:34:48 -0800 (PST)
Subject: Re: [PATCH] nvme/pci: move cqe check after device shutdown
To: Keith Busch <kbusch@kernel.org>, linux-nvme@lists.infradead.org,
 hch@lst.de, chaitanya.kulkarni@wdc.com
References: <20200212165232.23015-1-kbusch@kernel.org>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <0bbd7868-cd6c-9448-031e-c615c730c7d6@grimberg.me>
Date: Wed, 12 Feb 2020 11:34:47 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200212165232.23015-1-kbusch@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_113450_465339_66967AEB 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.52 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.52 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
