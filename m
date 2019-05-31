Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AF9831809
	for <lists+linux-nvme@lfdr.de>; Sat,  1 Jun 2019 01:32:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zavra816BVUziz6AOS18csWAICoJ5E/s1NBZjcivE5E=; b=iaDMtIE5Ru7bnkrOmJJxudVZj
	6XXFehezGkl/p/LcEofkGongtPMBYrfs7e1WPTvQhT3DJzT7U3vy0KO4xjCa1o46+wY8wu3Y11CZ+
	ly1xdVp+JzMFSSV4zeD42DGELu98FOGIBpaEoGkJ+e36yfeLqluRF8ltQW7TmCY/0uPNrzJNFZz7X
	0dMd9lb60jiIaS6S0JohUBAMcsATU2uUq+3iojZEVu771eP+VDzNWSEstsYHejw1hcYveaj8vOb2i
	82Y2NNeWmRH0cDqKOWoc7zOzFOg0nPuFyEFYLZAQHsY30W3F6smUjswUQu/hgip6kNwExGU0ERruh
	yDK2jhO5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWr0m-0008Bu-7j; Fri, 31 May 2019 23:32:36 +0000
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWr0g-0008BY-KR
 for linux-nvme@lists.infradead.org; Fri, 31 May 2019 23:32:31 +0000
Received: by mail-wr1-f68.google.com with SMTP id o12so387356wrj.9
 for <linux-nvme@lists.infradead.org>; Fri, 31 May 2019 16:32:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=xlM0/voiZZl+hBz8a3ON8an0AbmAnfPxUcSnWynPz5M=;
 b=UOsYJOCNyUrng/b8M8q53i0+fwiB9V3bFMNoYvgslN/wJt0rVTzwJM7z3QhnYd+eFp
 G5XVYeeZ9nHX+4IxQUITmgBs95iYZJp8N97pUT/MjaTEo1YwWCtI27ObojhggSNGjQ74
 6Gfogo2zN1TRNeiXLEbCsJnG2h+V6LPwHj9jy8qhHiYX6TX76XD4Q3ZZLJE9g9Fur/Iu
 CmvkQwNmmJVscf82aOoDGjxu/kyLKa5d+SFk6cBHr1T3mp9H2yK7e1uSSTObObmLf9+P
 rIAnYaG5YZhrcf2JYrQCjGBCvQRR3QoZ21peIIdz6qFOLluOjQjKCaNMwsLtst0iMKjb
 /PnQ==
X-Gm-Message-State: APjAAAWRiVTvLd27MyBt+cGKrCj7F/hewimBEWGKuvbWZ7qz2FXb306g
 aj6YnkBivpqYVza2ldZGjsM=
X-Google-Smtp-Source: APXvYqz5wBPElsNYdP1HGRbef7QI1WSpUK9rHm6It8n3BnTmTKarNBZH5bXyOdINdVz8IiiMpKdTbg==
X-Received: by 2002:adf:9e4c:: with SMTP id v12mr8242422wre.312.1559345548792; 
 Fri, 31 May 2019 16:32:28 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id t123sm13344751wmt.0.2019.05.31.16.32.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 31 May 2019 16:32:28 -0700 (PDT)
Subject: Re: [PATCH 0/3] nvme: Improve processing paused support
To: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org
References: <20190524202036.17265-1-keith.busch@intel.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <76f0ba18-fb80-7a96-6f53-d4df1d637da5@grimberg.me>
Date: Fri, 31 May 2019 16:32:24 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190524202036.17265-1-keith.busch@intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_163230_674476_E2091731 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.68 listed in list.dnswl.org]
 -0.4 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
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
Cc: Keith Busch <kbusch@kernel.org>, Bart Van Assche <bvanassche@acm.org>,
 Ming Lei <ming.lei@redhat.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This looks sensible to me,

Minwoo, do you have any concerns or feedback? If not
can I get your review tag?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
