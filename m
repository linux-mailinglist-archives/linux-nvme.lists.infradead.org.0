Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E9E97904D
	for <lists+linux-nvme@lfdr.de>; Mon, 29 Jul 2019 18:05:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EnlpFBr4ldsEYdTWBNvHAUFVmiRjTr9fPn7cEHVgDLQ=; b=XyHNco0tNZQgg5PfoYsQqHEun
	FUvMjKXC3qi6jwEOpXUtKQI+9sGv4B9dZD/y9kGkaou17gZOLc6c8TVWz4ShZYAZyY9XVBGqJgrDW
	wvWjHINv/Q2dkB6l9xYbUtz04N5jz82Z3jeQc/0sPKqcZG0q8i2irbDWPBkC02IStNi/89ER+wc4g
	1qezls/khMLC7fI4NX76374AqDELl5Su/IlTjDlYm5bS8W3jtkq++5uG7NUjgtxacEWnPLjsD7mSV
	4Yk7kLZUee72cx3MyAk/g1cLT3LMvdVt7makujLoBUjruSQhB5h54gFvlfuic4pxqAj9CTwoHihMa
	IrcX4Y8rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs89J-0005x0-Jo; Mon, 29 Jul 2019 16:05:21 +0000
Received: from mail-pg1-f181.google.com ([209.85.215.181])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs88z-0005Tg-U6
 for linux-nvme@lists.infradead.org; Mon, 29 Jul 2019 16:05:03 +0000
Received: by mail-pg1-f181.google.com with SMTP id s1so22185482pgr.2
 for <linux-nvme@lists.infradead.org>; Mon, 29 Jul 2019 09:05:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=Ep1uzx+K7lc0/y5UHmPvu52hBPOjld+H3hCoeHAJrdjtAwH3b2dRpA0d71WCyyZT4p
 NGtlH8NOKtooaoMuV15s36zmTp9k2vvw38/ZM811XwML1eAEZijeJzmGM/fQnwWDJ+gP
 pTiY7wBzb0X4PhpeBbmF9lv3TaqJhmRl63FsRJ4fPCxl60Nq1qGFjNlP9tgjGRPRTxrB
 Ij0ZnwFLQPnqH9UABIdG7a09UnkP5OukhVzHqSaoQpIb0MLSG2hNHrtc/C1Dch/Wm/PK
 1ezcgdpZvQBtHF6DHU2ef2JKCcEnfn70JLrhVP2TTHbZmCj8550o7bALpDGyWAoQcVA+
 7pBA==
X-Gm-Message-State: APjAAAW21pzV5QmJUdNnVOeVWCSqg3vGlpGhcMjed4jDfvmO2BGlY/tZ
 19R8Px2VDci17lKbBsLth4R69QuS
X-Google-Smtp-Source: APXvYqyiCdqhLpMNGuaStDGawLs5rj8J4cNHidUqnBeKUqNl16SpiN5MPJj5Qjf9Rp3D4LgzN1hF8w==
X-Received: by 2002:aa7:86c6:: with SMTP id h6mr37968352pfo.51.1564416300700; 
 Mon, 29 Jul 2019 09:05:00 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:68b1:d8a0:b9e3:285e?
 ([2601:647:4800:973f:68b1:d8a0:b9e3:285e])
 by smtp.gmail.com with ESMTPSA id b30sm89408930pfr.117.2019.07.29.09.04.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Jul 2019 09:04:59 -0700 (PDT)
Subject: Re: [PATCH] nvme/multipath: revalidate nvme_ns_head gendisk in
 nvme_validate_ns
To: Anthony Iliopoulos <ailiopoulos@suse.com>, Keith Busch
 <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>
References: <20190729124040.16581-1-ailiopoulos@suse.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <a2a4f819-463b-ed8a-e108-fde2acb79dec@grimberg.me>
Date: Mon, 29 Jul 2019 09:04:58 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190729124040.16581-1-ailiopoulos@suse.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_090501_984019_303D4C3E 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.181 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 TVD_SPACE_RATIO        No description available.
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
Cc: linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 Johannes Thumshirn <jthumshirn@suse.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
