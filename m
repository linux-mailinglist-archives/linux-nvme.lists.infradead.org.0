Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99B65170C4D
	for <lists+linux-nvme@lfdr.de>; Thu, 27 Feb 2020 00:08:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z1fMvao11i+d0UZrbIxXcd2/3fEWA/mH8uzwOCutGXo=; b=ciZ2FLvqBX4c+7E97lV5q2zp8
	Rez15JUUVsW+vkzrHeuDHrD8WLcIqaIw7U5p8dfeDutjdn83jJDNI4sOHyth5lbpt2p46nhcsd5Yo
	QG+Z3hMtPv+DndtzC52yul+4yqKVsO+f1WREuVEVg7727cYKgVdH0H5FCTeDiZpm74Y1/VY2yhjY2
	yPu95V2VTtL5f42ZxPakquZo2VzsuxrfaDcYes3nTo4ZhvU3EL5xqgeavbfAI0Li5NN81zQZguu3T
	27qRhpoJsNyH+0i3ddtFrhgMB39/1Qylc0QnJ4Eb16Ip2HREB4nYn/lsoZyhdtXUx81D6ub0YvSmk
	q6A9CJbyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j75nM-0006bM-8c; Wed, 26 Feb 2020 23:08:48 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j75nG-0006aq-Jn
 for linux-nvme@lists.infradead.org; Wed, 26 Feb 2020 23:08:43 +0000
Received: by mail-ot1-f65.google.com with SMTP id r16so1155072otd.2
 for <linux-nvme@lists.infradead.org>; Wed, 26 Feb 2020 15:08:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=mBxYVRs5vAu8kOn/LleQSeyJIxEpJN6MKq1tsaDrnDN3tcGwvd4Wsgj8kjPwjrfha5
 WRDoJ+htz1yAh6MBcY2SK5msDvpA2sl8xFOJDfMiz1+zG67Kw9UZfRSt/uw6KCo0qlTC
 3UEbRr9XG0dxY+FqNYcfH3D71eLgla0kFyy0VG1csuOoYAkf2dNe99wuNKhIOynLpY4Y
 x6ll/HfFqdDwuypm3pS1mRjaVOGdZiBFC6JgnuKQN1mDw//X3MEDZkDvsIaykfaFKOdq
 2sO4X5hVNQiGm+ajlTWIS88UTD1VTZLcRRvOcAS5ZqTxxcvXPSV81eCStZO7Wtgnxmxi
 t+HA==
X-Gm-Message-State: APjAAAVww39qB91VzKMLgIHNMDPukOUc63bS25jyn/cKGJkNxP4Zx58x
 VuSTX0+SE/lKQv8wVbtizp5Vqn4A
X-Google-Smtp-Source: APXvYqzO+D732Y9sL6GiQeR8dO7WbtaCh1X0mxbtVIS1E9eqqPe3HHDpW2Ci2PyVA0ICc7GMmRdhJg==
X-Received: by 2002:a05:6830:10d5:: with SMTP id
 z21mr1049677oto.30.1582758521904; 
 Wed, 26 Feb 2020 15:08:41 -0800 (PST)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id z10sm1308741oih.1.2020.02.26.15.08.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Feb 2020 15:08:41 -0800 (PST)
Subject: Re: [PATCH v11 1/9] nvme-core: Clear any SGL flags in passthru
 commands
To: Logan Gunthorpe <logang@deltatee.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org
References: <20200220203652.26734-1-logang@deltatee.com>
 <20200220203652.26734-2-logang@deltatee.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <dee2201b-9bfe-c3f6-d381-eb478a311e04@grimberg.me>
Date: Wed, 26 Feb 2020 15:08:39 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200220203652.26734-2-logang@deltatee.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_150842_652632_371E095E 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Stephen Bates <sbates@raithlin.com>, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Max Gurtovoy <maxg@mellanox.com>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
