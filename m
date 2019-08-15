Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BD2E8F1F3
	for <lists+linux-nvme@lfdr.de>; Thu, 15 Aug 2019 19:19:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=i7swCCkIj4FX+C/WfUYECWqlfzXD6M3qnqivoYdpPgY=; b=MgjGclhZ76dR/vbPPOxFEMYJX
	w8+onvnF/akYq175UGsWlNJXhyZ2AL6l1aa3vsg3TLSFmLj93BO9QmrAa0RwAB09BCVTYPuHHA7vL
	BITOKqNBnfFsx0qZKqFbVbnu/LHwvxXGmHTNBlXYVWbOZgoK7lERJcArRxso+nSmrbQwMJvY2TmWm
	T7Aihd4zgd9Zx1/yNpew7qs6ebjvX7numc4qFF2yoAopwBBgAaUSxDH7o5r1BLGd4apvv4oj8BRf0
	ijBkkZylHboyD66qZIxqW9kxCKCyv9Zs/yODyuaxZ6em6BTftjKlT7/4RwsjFQYO3+qoHFSi7qkxR
	K4HsUoDCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyJPG-0000hH-PR; Thu, 15 Aug 2019 17:19:22 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyJP4-0000gI-7f
 for linux-nvme@lists.infradead.org; Thu, 15 Aug 2019 17:19:15 +0000
Received: by mail-oi1-f193.google.com with SMTP id c15so2790087oic.3
 for <linux-nvme@lists.infradead.org>; Thu, 15 Aug 2019 10:19:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=q57CbEezHwaz+ruo0Zds0qNhqBgg8E8BpKrwrd/odqY=;
 b=U98vj09XSNmSDPWvJwvC6eYGDxLe4gCUT/PQlMqP2LAriZGtalONE5GUIjJEknkK2J
 /F6FRPHakWISE++nsv4dXt/7iqH7lZ1cyEJC/Tr40zAiGyPVXcbidCX7vywVqq1BAPuy
 Ed+wPBvl/JCgO+kZHNbKDsZioL5JF+2AQVLMASTD63QGL9W9nny9LYgkoDPYcQlDk4v2
 gB/z9Kc1+Hod0SPgO3803cZ6bmJa6/ZTUGB235DjUY+LBZCvxnZWw6hmmcjnZhWkEr0G
 KBLFcVmIBOkT1iguKyvE55uEOvK3ogBsoGt0pLhfBqXNkU4dJvwwY3B9GJQfjkNds7hS
 Tzaw==
X-Gm-Message-State: APjAAAWAjXuiNvJyxmliV/JsBrvTUBylHfJC/kC8umyuyFzVIaVmY7/u
 DDI3GgQPc7E5kDVb7gH9X+4=
X-Google-Smtp-Source: APXvYqzhcy7Iuwhfr0kqvlxMGNPiAIGusoibvIvXEYeU0fjFFc68uuXB3h+Pa0DQkgvBY2qvjT/+Ow==
X-Received: by 2002:a05:6808:643:: with SMTP id
 z3mr2130261oih.101.1565889548604; 
 Thu, 15 Aug 2019 10:19:08 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id 12sm1130310otn.23.2019.08.15.10.19.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 15 Aug 2019 10:19:07 -0700 (PDT)
Subject: Re: [PATCH v2] nvme: Add quirk for LiteON CL1 devices running FW
 22301111
To: Keith Busch <kbusch@kernel.org>
References: <1565813304-16710-1-git-send-email-mario.limonciello@dell.com>
 <32f20898-b9af-eee0-97de-0a568de54b57@grimberg.me>
 <20190814201900.GA3511@localhost.localdomain>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <0cafca37-011d-4c19-4462-14687046a153@grimberg.me>
Date: Thu, 15 Aug 2019 10:19:04 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190814201900.GA3511@localhost.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_101910_275810_189855D7 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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
Cc: Crag Wang <Crag.Wang@dell.com>,
 Mario Limonciello <mario.limonciello@dell.com>,
 "sjg@google.com" <sjg@google.com>, LKML <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Jens Axboe <axboe@fb.com>, Ryan Hong <Ryan.Hong@Dell.com>,
 Jared Dominguez <jared.dominguez@dell.com>,
 Charles Hyde <charles.hyde@dellteam.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> Mario,
>>
>> Can you please respin a patch that applies cleanly on nvme-5.4?
> 
> This fixes a regression we introduced in 5.3, so it should go in
> 5.3-rc. For this to apply cleanly, though, we'll need to resync to Linus'
> tree to get Rafael's PCIe ASPM check after he sends his linux-pm pull
> request.

We need to coordinate with Jens, don't think its a good idea if I'll
just randomly get stuff from linus' tree and send an rc pull request.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
