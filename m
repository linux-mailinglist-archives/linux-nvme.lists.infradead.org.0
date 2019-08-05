Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29CEE81FD6
	for <lists+linux-nvme@lfdr.de>; Mon,  5 Aug 2019 17:11:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sGC+TAAYnoHvqMTVzEmPGARwMZo5Y2d5lX37FhIl030=; b=tdiB4HytQlh9+Q2YdZ8+pnR91
	/crRWGE5lU+pJrtFsP3OUhL7yJt/nu9ReHcH7KVyJBbYPocZSuCeeTgKghLoVmVNZ5kf55mB0l3vP
	WDf7tpL/mv5Nndv/KL7XxWs8eY8YGmUmjk81oaGU3qOVt5e2/hi1nshdUsiljpfF7eE1YxHvsJ7JZ
	ATp8lHPgkDGhrrYQkRjQ+KGro0JVrsDKQjslNpbDVjMwiS7lvAx6CxOSviJn1R44SOAk7zHjwfkcf
	zFQyilgwDIHxOcE5cjrCXYDm5dOB7z4QQFw7r4RXYBxGP7wsMn1M8lmJjTj5VkwNQjNfTvgTK3XZ1
	gdGwKVqHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huedX-00021O-Vn; Mon, 05 Aug 2019 15:11:00 +0000
Received: from mail-pl1-f193.google.com ([209.85.214.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huedS-000213-2z
 for linux-nvme@lists.infradead.org; Mon, 05 Aug 2019 15:10:55 +0000
Received: by mail-pl1-f193.google.com with SMTP id az7so36563447plb.5
 for <linux-nvme@lists.infradead.org>; Mon, 05 Aug 2019 08:10:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=5+pDMkh72Vv7ubfPG5l74UxQd8/zmjHeZY2Y4XFntHw=;
 b=c4koHqhAZA0shM8ZmZfJ1SlOMXF56GqW6/pLRV4VR93pPLBM/0VmEtnFJlmg8DcufV
 RnE1FIHExVMFOawcoArLXy9YOgmDnD59nOzVPA3Cj8UKP94Mscae9it1Q9RiPv2//6Sb
 eNJ5lbuzvdWkj9gDh5NO/enOgemFuDEUB7Z0cRvO0LejgHjdA8IMeF4zRO0fbUUiFPJT
 y7QvNXh5MsgwA1S0+QW0Wpryzhuu37+Ls641+fvdetWnk/075Ofjr47B8/DsV0Mc6PG6
 9EveRGF/lc4noHDwzxjyQkG5UKoMLzUlWBm48mkfQGT2agWjvuWK5RSnvxwruiq+HlDR
 78zA==
X-Gm-Message-State: APjAAAWPcOrUv0dYhpnntesbvr6KiP15RBgrUC+0T3tNsP1Fqo9PxuQI
 ZB/nAmAicIP5YnqQLnFYIxw=
X-Google-Smtp-Source: APXvYqz6U9W5UdJ0P064c57hi3wVvN3UqFKA6qNdRkzKXuxatIAhZG4hdDlkIB9aqCDFuTpv0jCBgg==
X-Received: by 2002:a17:902:2f:: with SMTP id 44mr147326002pla.5.1565017852344; 
 Mon, 05 Aug 2019 08:10:52 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:a183:2905:6842:b7c?
 ([2601:647:4800:973f:a183:2905:6842:b7c])
 by smtp.gmail.com with ESMTPSA id b24sm13335932pgw.66.2019.08.05.08.10.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 08:10:51 -0700 (PDT)
Subject: Re: [PATCH 1/2] nvme-fabrics: Add type of service (TOS) configuration
To: Israel Rukshin <israelr@mellanox.com>,
 Linux-nvme <linux-nvme@lists.infradead.org>
References: <1564912530-15404-1-git-send-email-israelr@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <04c776f4-a04a-8256-c659-daa11fe78a29@grimberg.me>
Date: Mon, 5 Aug 2019 08:10:50 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1564912530-15404-1-git-send-email-israelr@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_081054_131303_F5FFB6D3 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.193 listed in wl.mailspike.net]
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
Cc: Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> TOS is user-defined and needs to be configured via nvme-cli.
> It must be set before initiating any traffic and once set the TOS
> cannot be changed.

Can you please have tcp support it too in the patch set (and test
that it works)?

Its simply setsockopt with SO_PRIORITY.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
