Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EF0B3225A
	for <lists+linux-nvme@lfdr.de>; Sun,  2 Jun 2019 09:12:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EnlpFBr4ldsEYdTWBNvHAUFVmiRjTr9fPn7cEHVgDLQ=; b=Rtfo1H6HS4xdzNNsX9+mcS5dN
	xh3Y95IGpkW0jXJRT0f5rr3cJixF8r5KpOl/paglxK/IB+mkZQ1kAjPIfhhaHoQkckGtamgSvkZ/R
	ZSpQMLaPom1huf4+9nLk466uWdCSwV2pC0lAJTx1WLmpes4d7B+B7oaf6iYVoaLj6fOHoLC54HQtk
	nIFs93a863Wc1m/5TdwF1TmExJYKcGM7TqNV06w1ODEDmVENqUa9Ej8hXJzOjo+UgDAIMwuAkiuBb
	5GCpPIA82yyFGMh2az3TguEVo9Mj3zEZ2nzgJH/EEvX6MRQ+RolqaWWrtdKG3GW46gc7Kg+KfBYnq
	tULZpBzfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXKfS-0004p8-7f; Sun, 02 Jun 2019 07:12:34 +0000
Received: from mail-pl1-f194.google.com ([209.85.214.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXKfL-0004oa-Ug
 for linux-nvme@lists.infradead.org; Sun, 02 Jun 2019 07:12:29 +0000
Received: by mail-pl1-f194.google.com with SMTP id x7so4718132plr.12
 for <linux-nvme@lists.infradead.org>; Sun, 02 Jun 2019 00:12:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=iiwhkWIOxYXQd2yL8f6R0JDFndsX9rweMhIAFi1caf+62jOaMVt4hGGhiGlK3r4gts
 g9MVP3Mxc1zGI5uUujUhQpOf1md2zrTgSCfnOePxezkhKBeD/id4pAWUJKng1hyokWER
 Xj0Qvhzyc5erWjD1XEpim2rqtTxgkmsATRXFhytnbU7pwdrFQBdpnspQIibnH85xA+4B
 +pvSB4eXIUvJwu+2h9O/2xdD8mCwvNWOi4vkoq+xYw1D+si/dakYp/P3nhaQ0a8qSgz/
 zIIofEZc/fn70QXlxiWw6B4GK++WQBDufEKaOiPDkKe6D2+0O68kmFfchV6TdCeVeHTq
 0ktg==
X-Gm-Message-State: APjAAAU4HA71/2smwNi0MRfRdgwVw4G5EZbO8wmyXc9K0wb96sr38rzc
 uzm3y6COX3RS1RS5e1mQBm4=
X-Google-Smtp-Source: APXvYqxlbkuYhSLkocU+fl4Q1s6mARtcU1AX1WzQRiXcDvwCoN4xq0RqWl5aI7VfiTX6YH3OnbpYyQ==
X-Received: by 2002:a17:902:21:: with SMTP id
 30mr21480661pla.302.1559459547252; 
 Sun, 02 Jun 2019 00:12:27 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:d85c:2df7:72d9:ea63?
 ([2601:647:4800:973f:d85c:2df7:72d9:ea63])
 by smtp.gmail.com with ESMTPSA id o6sm10913316pfo.164.2019.06.02.00.12.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 02 Jun 2019 00:12:26 -0700 (PDT)
Subject: Re: [PATCH] nvme-cli: update command message for "help"
To: Minwoo Im <minwoo.im.dev@gmail.com>, linux-nvme@lists.infradead.org
References: <20190601055428.17906-1-minwoo.im.dev@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <f0c97774-f5aa-1749-d4a6-c3465abb9044@grimberg.me>
Date: Sun, 2 Jun 2019 00:12:24 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190601055428.17906-1-minwoo.im.dev@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_001227_983734_5A95400C 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.194 listed in wl.mailspike.net]
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
Cc: Keith Busch <kbusch@kernel.org>, Minwoo Im <minwoo.im@samsung.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
