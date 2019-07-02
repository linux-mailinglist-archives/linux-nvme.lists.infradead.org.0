Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FCA25C8E1
	for <lists+linux-nvme@lfdr.de>; Tue,  2 Jul 2019 07:39:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EnlpFBr4ldsEYdTWBNvHAUFVmiRjTr9fPn7cEHVgDLQ=; b=oP/l4XYek6t+XDGupyaHS8Nl9
	+dAkaoDuFHEllP4i819phMpa8DyKlKYgnLRnIU2DqPDFx+DabEuNQtVG8t/f/StMnyaT4i1ImzTZ2
	9zVKBKXzEwHFl+TTlP1rSt9x1MVPTldISEWiYWLvxKZ/pHkgBgCw8hV9LVqOY4zpSpNcvzFLd1vCy
	3Nl4ZmSu8Xnr556XDArUzOJcgDU9saQi0/VQ0JwlmHghycZX/rbCzEiXZSIrTLgYa5cFKQK7rhu08
	HzuXhsiW3ttKuPDM9aoblfh/+6y7YViPn04uWFHKxGPCwpg+zOu6v8a1u1M52tmNtYATqiQ8AIHgs
	lQMOBaNag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiBVi-0005Cw-TQ; Tue, 02 Jul 2019 05:39:23 +0000
Received: from mail-pl1-f196.google.com ([209.85.214.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiBVZ-0005Ca-DC
 for linux-nvme@lists.infradead.org; Tue, 02 Jul 2019 05:39:14 +0000
Received: by mail-pl1-f196.google.com with SMTP id a93so8540958pla.7
 for <linux-nvme@lists.infradead.org>; Mon, 01 Jul 2019 22:39:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=c0rjAvdjpXp48mmp6FzDCAfSe8M7jFKrD749p7fKKluLQ5fd3HoOHtxu/PeVoCexnO
 qaO3abhsQkqbPg1QCV0y8OTmIEiZRBrTkp7A5YILAFssfz6PvsMmWLG6TVVgHEzxdJnm
 KTILD1uMv/z3Rxfw+8EMZub505NDJ1iimEeQkOrUTl/OzG8y/l1as/d5i23apqbdzy4f
 5bthcDnzbnc17rwC+AamUJ0FADAfxgaowTnabhgcydkhnXwHjfmL5+lEoYXA1p+SODze
 PKLM8V8hPTQ53J8G0qHaOIKsH2J/p+AgwPj4sxCoEN08G+TUIqQFxOPbzm+iF0lj0tBw
 CATA==
X-Gm-Message-State: APjAAAU17+j1nYZYxq93QP6BLatcBYaESXe6lIBRof04br+ilZEytkLV
 vxBVTW2RxxNIrCXK6uV72WnkdBD0
X-Google-Smtp-Source: APXvYqx/QwQAtSJtC1bH+6RuUHjwutQy9QW2gQLdDTDxtUFAlnA7XBkFa5jJf+Eta+xEYTBHMsFpIA==
X-Received: by 2002:a17:902:e2:: with SMTP id
 a89mr33434540pla.210.1562045952459; 
 Mon, 01 Jul 2019 22:39:12 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:5da2:6508:3da7:e74a?
 ([2601:647:4800:973f:5da2:6508:3da7:e74a])
 by smtp.gmail.com with ESMTPSA id y8sm16087076pfn.52.2019.07.01.22.39.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 01 Jul 2019 22:39:11 -0700 (PDT)
Subject: Re: [PATCH] nvme-pci: don't fall back to a 32-bit DMA mask
To: Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org
References: <20190628071837.7087-1-hch@lst.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <015267de-2dcc-115b-82aa-6e8b18f82417@grimberg.me>
Date: Mon, 1 Jul 2019 22:39:04 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190628071837.7087-1-hch@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_223913_441500_3FB7A679 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.196 listed in wl.mailspike.net]
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
