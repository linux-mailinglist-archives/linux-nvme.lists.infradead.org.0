Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF55C6F3FC
	for <lists+linux-nvme@lfdr.de>; Sun, 21 Jul 2019 17:29:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DsOcil/MiYdZL/owOLqovjp/dJrMEGvMx2eWEESZ1uw=; b=p2kbrIJaku1JfM
	8mlYHi5l3npcwa0fg+ZhMiRnh+BMfqimCp9YlM0dvtoJJsh9R2N0T7oxluD37E0ivN45p3t/lJibG
	6w4OI+jV1sxP/sck1GAMfv9tTKqlA46F3vzuGG2WKkdPamLpl7C0/mdrvFdxhaIHvlNK5uckyNLAt
	NeK086n5L+eWUModDyLa89OiAFLhlNLjNdLB2bXzXLv0XVtnhTxTvYm4phxpZ92xPBkbavj/ff8nh
	9N+xGAHyfIfGMhjzJuLDDuLzO0SMVU9kl8MZ2Sz0GRBARbLeB6udf0v7D17KhAdyVhg+lGAt7Diwr
	/mL5GDiTRnCRYyIZk6gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpDlj-00077h-Q8; Sun, 21 Jul 2019 15:28:59 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpDlD-0006ti-An
 for linux-nvme@lists.infradead.org; Sun, 21 Jul 2019 15:28:29 +0000
Received: by mail-pl1-x62b.google.com with SMTP id ay6so17948837plb.9
 for <linux-nvme@lists.infradead.org>; Sun, 21 Jul 2019 08:28:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=yAxwutZaQsK3X4/0hMVM3PtgjhPdxnY/TrqJrrI1yT4=;
 b=aMU7RVrbfRy8xejYmh3En2KPevydejiv46IVRJE45ji5td5QTS0wYRk4Aw6MFVMhXU
 zZHBErNeiJECsYg7xxSjHwWZmmj1c83PJLmJlbicUydltIKYcTbCLFYojH5Gzf9uIf+i
 1dxR4JZb1RNIXxWFMF6S1t+2GMoOQh8Jj8ogRcDB5QUFS7Apx28f2nTn78RdQ2/cqJro
 qnYeHcIRHKUaqp7cAaMl0bXlrVYyQ2ZmxuDPIPVD9dgTDoejtA7DljW1fdx79FpnKjGO
 IrqwA9qdzVzIlpMQyJpgiCjGIuWqESJsqMSFBGdhPLyOC9IpEXUdncFrF9GGgQvZrMQg
 Awog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=yAxwutZaQsK3X4/0hMVM3PtgjhPdxnY/TrqJrrI1yT4=;
 b=bug0dJj5uTLkEXzV8ydF23T2ImL98vxvaDwss7rLok3z883xFC3zACQw8EAJzkgCt6
 CmkhD1uOCmFcwpXnAnezv7N0oPGPX0GjJNgWgCJ5zUmAZi1FnlYpwDMoJMpQa9l+Bkkf
 pkVVFjdToZiLFASs57aYh8qoMiLbQmoCcWRmMgU/NMPWSZTpMnzfROLojJnD0yOJ07RZ
 W22y7yhKGltDMkRJuhL7V/Q9Q/X8rMIU0Q/VJz/W9cI2F0MwzctkgpdQsuwauWuqniJd
 2CnRR6fob0dVUzRfYqAzUb4NGudS9q4gaCAYokSmIoGw14+M+NQZzLLbLkyWJ0HTWE4p
 G3/w==
X-Gm-Message-State: APjAAAW2HuWfTXVWvcLOQZiQ6Tczk3B4HAycSJMFfGMIPkFaPzjR+5Bt
 FE4Uy9mT02ZFmZEzbSWN+tV8Pi9paNc=
X-Google-Smtp-Source: APXvYqzZTRo3OGPK5X0u04ugzLDbBJL0qlcpWN/5SJEM+71kBy8pcPNHkWJlVZ0k9HucjQVCpjkZhQ==
X-Received: by 2002:a17:902:2983:: with SMTP id
 h3mr70835418plb.45.1563722905703; 
 Sun, 21 Jul 2019 08:28:25 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id k36sm38780832pgl.42.2019.07.21.08.28.24
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 21 Jul 2019 08:28:25 -0700 (PDT)
Date: Mon, 22 Jul 2019 00:28:23 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: Re: [PATCH 0/4] lnvm: minor clean-ups
Message-ID: <20190721152823.GA3325@minwoo-desktop>
References: <20190721152649.4894-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190721152649.4894-1-minwoo.im.dev@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_082827_614626_648B2984 
X-CRM114-Status: UNSURE (   6.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:62b listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Keith Busch <kbusch@kernel.org>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Matias Bjorling <mb@lightnvm.io>, Klaus Birkelund <birkelund@gmail.com>,
 Javier =?utf-8?B?R29uesOhbGV6?= <javier@javigon.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Sorry.

Please ignore this series.  Will send V2 right away.

Thanks,

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
