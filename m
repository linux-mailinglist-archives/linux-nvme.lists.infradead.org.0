Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C47A73525
	for <lists+linux-nvme@lfdr.de>; Wed, 24 Jul 2019 19:21:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6kLVjYM7qItWul7iHr9d+XUAWLxA6WtuXbwzBWmHiZA=; b=EEOETMR4+TAtMy
	OqUyfh/5r86TaugqjNacMOwiqRrQWZogydHgiL4Vf6uPS0sTVKOX8hqD8w7qFJJ8CsVjA7jbudTRX
	xiWOak5P4C3RAbJsvMAqxIp4e8b9ln9JTLJ2wdG746QALbUqkT8g6/gZ6Xw86HELB/Hz59hwBG4pU
	8aCRCd8ajne8wJJXQ82fK/eVVcu+NW7fzDn56Ogyscudlj24ssEJOwOx5w3s6zmyLlYYSDLFKnjkN
	JM0TFSDrgGlG7JS/dKL7qzhT+fghUArlUxFVGKbZLTmQfb19zepuUB1WZF5DkpYW9pXW1d58affMZ
	FGfZ1VUvRwqkU7XihYeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqKwu-0002F6-9B; Wed, 24 Jul 2019 17:21:09 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqKwU-00024j-CS
 for linux-nvme@lists.infradead.org; Wed, 24 Jul 2019 17:20:43 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jul 2019 10:20:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,303,1559545200"; d="scan'208";a="345168658"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga005.jf.intel.com with ESMTP; 24 Jul 2019 10:20:40 -0700
Date: Wed, 24 Jul 2019 11:17:45 -0600
From: Keith Busch <kbusch@kernel.org>
To: Minwoo Im <minwoo.im.dev@gmail.com>
Subject: Re: [PATCH] nvme-cli: update command message for "help"
Message-ID: <20190724171744.GA5568@localhost.localdomain>
References: <20190601055428.17906-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190601055428.17906-1-minwoo.im.dev@gmail.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_102042_612340_700A150A 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-nvme@lists.infradead.org, Minwoo Im <minwoo.im@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sat, Jun 01, 2019 at 02:54:28PM +0900, Minwoo Im wrote:
> The "help" subcommand will show the man page, not the help message which
> is printed out to stdout by --help option.  The previous message might
> make confusions between man page and --help options so that it needs to
> be updated.

If you just type "nvme help", you get that help message. If you type
"nvme help <command>", then you get that command's manpage. This
behavior was copied from 'git'.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
