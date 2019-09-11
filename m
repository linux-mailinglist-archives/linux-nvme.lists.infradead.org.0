Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4D11B028A
	for <lists+linux-nvme@lfdr.de>; Wed, 11 Sep 2019 19:21:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=THCuSWA+hu+a3NNYv7VkQ4KfJJoeXXt+iBaN1aokz+o=; b=NrncRzcXEaHjJrrJcheYu91Mm
	rF/tBQVHOU3cseIk1I68iJL8pdnhcUInfQw5HdZWsYrxkLue0GzgIlK8NSmvyIY1547DM3xC2865+
	Sy6S4jNf3RYE0TJANRgZQFzqN3p8Q6kYbfKxt3xNh7X1hfC30Ewd63Cj4xS+WOWr7db61BOD10Qm4
	zVVZC1vjK1GXNAxWPgbi2d3YaHvgMWfPWwK7kns2GKxiynFivpPxpicGZ9QIudknDpjMoylh+5xfb
	NgVTgIo8qHm69W8elyTxKV5k6ZWZfAQDRn6nr6+Dk1PIsiNTeCtohdF+RzwSsiRq8odL/clVaACMj
	+XkYh4ByQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i86J5-0006tA-7v; Wed, 11 Sep 2019 17:21:27 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i86Ix-0006sn-1p
 for linux-nvme@lists.infradead.org; Wed, 11 Sep 2019 17:21:20 +0000
Received: by mail-oi1-f195.google.com with SMTP id k20so14779794oih.3
 for <linux-nvme@lists.infradead.org>; Wed, 11 Sep 2019 10:21:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=A1/ETkpc6G5lmIiqCjrYZygtKs+ulwm0ZGxJ4xV62tI=;
 b=DFjwwG+M/FFZTFWLQDLMrm456RsIYYKdIA7C609RuBNBy3if7N2VwvcYPtM7jf9+fr
 YovysTkkspwzJDTHvqihGl/4oIHr4fBdPUfPRVaCT++omE0ZtA1FX7871wUALt2WChx6
 t7ZafIKWP0o42HB+RY1PaVzY7C6wjeaqd8116M+uCpOsV0PLhn9La10+is2fgWPGgRNB
 /YcqWYaF5yb+gNiBm17FE0+MAL2gzLe8biCWuNGcQKPGh508zBUUjm0dPHFO4mvFo6D7
 G2VXKWoiqrKjAU5X5Md1a//N2RlG5k18UVGdQWPc/kUEbZ7uWm05lbkF7+apjvt9q5gS
 fIxw==
X-Gm-Message-State: APjAAAWwqvIoPQcG16RUjCJdKD/t5jLMfEi34kk7YP1QV2Nyw3WgNs2z
 qMnRy13DZ1Tum0VU8/Od0LT3y+LL
X-Google-Smtp-Source: APXvYqxqZ+haTwVi3/MKjiTUTVQ1QsehIAv7tF1qipiAoQyKJTn6/7c+pIHjMecml9oTBwCRiMA/PA==
X-Received: by 2002:aca:c550:: with SMTP id v77mr4881558oif.93.1568222478126; 
 Wed, 11 Sep 2019 10:21:18 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id o4sm7789027otp.43.2019.09.11.10.21.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Sep 2019 10:21:17 -0700 (PDT)
Subject: Re: [PATCH] Added QUIRKs for ADATA XPG SX8200 Pro 512GB
To: Gabriel C <nix.or.die@gmail.com>, LKML <linux-kernel@vger.kernel.org>
References: <CAEJqkgivvhQ=tOOuLjY=iwBVCKQhmmjpfNDa1yJ5SreNQubw6Q@mail.gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <4581016e-b421-e794-e603-807d37aa1bf3@grimberg.me>
Date: Wed, 11 Sep 2019 10:21:15 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAEJqkgivvhQ=tOOuLjY=iwBVCKQhmmjpfNDa1yJ5SreNQubw6Q@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_102119_093434_46A51477 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This does not apply on nvme-5.4, can you please respin a patch
that cleanly applies?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
