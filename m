Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3356267E5C
	for <lists+linux-nvme@lfdr.de>; Sun, 14 Jul 2019 11:05:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EnlpFBr4ldsEYdTWBNvHAUFVmiRjTr9fPn7cEHVgDLQ=; b=h7YLSxJwp0WnqpJdFayoPFfCj
	xz4yOhDeomdKjqEUB/KVHspkwF7QSnzOhDH0zX8ZUxpVe/4OH6rMb7zL3OyfIKPP1e4BcCr5ci0KR
	v78bNvZPZHU9OWnP6z6ayqotVLDUZLDdzA6RXM98UC0W5hf+YO3AUmoHJsJneO94S82vE+g/PJVT+
	fqSb7F25LjoLVB4/CDY3My2CqwqAU8+LQOsoui3jIxVvQ/gNiNIT/iNvXXNpYFdgns8USO+xpAbzK
	EBSOfecLEy8pBNzKndnPFFUvKbvThMAHoUwq0QAo8Ix5TyVaUELTPja1y+lWmoaq7s4YLyQGtfXRl
	/QYXZ+ovA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmaRV-0003lY-JK; Sun, 14 Jul 2019 09:05:13 +0000
Received: from mail-pf1-f195.google.com ([209.85.210.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmaR7-0003l5-Uo
 for linux-nvme@lists.infradead.org; Sun, 14 Jul 2019 09:04:52 +0000
Received: by mail-pf1-f195.google.com with SMTP id 19so6099374pfa.4
 for <linux-nvme@lists.infradead.org>; Sun, 14 Jul 2019 02:04:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=NFIscU01uJcFBh8Q0QqowqcdT3abVGD77D316B6UMOWtbsSYjsw+eIGNj+ipQXdKRZ
 hR2mHo0LreYo/SuexTucrAf5iV5YZtctdwEr3nN6Eb688/d6xxn7M5SeN6BHCXG1G0iy
 y957TSjPrO19aXVs0P+rU4Y0npqpWzJELCjlogWxMREFOU6VVz1z/lN4feZmo/NZuX5d
 cATeNrN0ieedDXwIaTf+IhtsDocfZcOt58OG9QFByUHTQhkhbFWfc+fHc6dyRAnQZwTQ
 g8F4XEwAl8N5BmLlX9NusoLsNKVhQJO+hnRy0zfB7woujFZRs9dwrwprxRUOzFiLKmLW
 AJLA==
X-Gm-Message-State: APjAAAXzcodD14Tn4k7ciaheG+RN7KbVHAdnt3Ch8avKN2swGT67kyjd
 Igef0zFbgx+6u9eIQzD861I=
X-Google-Smtp-Source: APXvYqypXD7y/McPWXHqsIFKFptMrFUXo6m+TkynEMxIa9dZ5PjH9/12tm9Q4+SAZjmeSak0mWBZVg==
X-Received: by 2002:a63:2259:: with SMTP id t25mr19350640pgm.298.1563095088646; 
 Sun, 14 Jul 2019 02:04:48 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:10a0:43d6:25f7:7bc3?
 ([2601:647:4800:973f:10a0:43d6:25f7:7bc3])
 by smtp.gmail.com with ESMTPSA id z68sm13181695pgz.88.2019.07.14.02.04.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 14 Jul 2019 02:04:47 -0700 (PDT)
Subject: Re: [PATCH] nvme: tcp: selects CRYPTO_CRC32C for nvme-tcp
To: Minwoo Im <minwoo.im.dev@gmail.com>, linux-nvme@lists.infradead.org
References: <20190714081842.32427-1-minwoo.im.dev@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <93b9108e-5a03-4ead-bdb7-d30037648922@grimberg.me>
Date: Sun, 14 Jul 2019 02:04:46 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190714081842.32427-1-minwoo.im.dev@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_020450_222416_10B39B6B 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.195 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
