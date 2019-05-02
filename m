Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E77F811942
	for <lists+linux-nvme@lfdr.de>; Thu,  2 May 2019 14:43:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=trqNTEaxBTgCNMTNuJTnwukcBndeQaNw0csC1r4mNG8=; b=KOHXVsp70vpL0K
	cAlUZWuAOQylLizqAVdVyOAAdX/zptFUw0Zc4Y7jh5iFwBNtgqkzrXtCSUTE3svVHGbxsKkEMH6YT
	tNMlrhkjzrOouSQmWMg18GA8NOUn9Vo/F3WMbolhItxBgDaQOKO5nUyXo51zoY+ed593Uc6nKQIDr
	RrH6XZvDZv/N2+H9meXXFiPanmQ15A/cb4KvsG6CavgEsS4kcgHLI3xh28+cbZnzFh/kI3rU1xM5/
	ZNX14a3iksDwUaYJFUkHXymi/adxJV6GH+6daqvlzgQZWNsbii5Rot5ddbTDmMS8RWgFGYLfFsTxm
	K0KzMSObv7jBPkhi2eig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMB3F-0006OW-RQ; Thu, 02 May 2019 12:43:01 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMB3A-0006Nc-LZ
 for linux-nvme@lists.infradead.org; Thu, 02 May 2019 12:42:58 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hMB35-0000gN-0P; Thu, 02 May 2019 14:42:51 +0200
Message-ID: <e5cfeb7ad11b3783239e05ab7414fcec28dce1b5.camel@sipsolutions.net>
Subject: Re: [PATCH 1/4] devcoredump: use memory_read_from_buffer
From: Johannes Berg <johannes@sipsolutions.net>
To: Akinobu Mita <akinobu.mita@gmail.com>, linux-nvme@lists.infradead.org, 
 linux-kernel@vger.kernel.org
Date: Thu, 02 May 2019 14:42:49 +0200
In-Reply-To: <1556787561-5113-2-git-send-email-akinobu.mita@gmail.com>
 (sfid-20190502_105940_876596_E74F58C8)
References: <1556787561-5113-1-git-send-email-akinobu.mita@gmail.com>
 <1556787561-5113-2-git-send-email-akinobu.mita@gmail.com>
 (sfid-20190502_105940_876596_E74F58C8)
X-Mailer: Evolution 3.28.5 (3.28.5-2.fc28) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_054256_952611_C73A10E3 
X-CRM114-Status: GOOD (  13.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Keith Busch <keith.busch@intel.com>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, 2019-05-02 at 17:59 +0900, Akinobu Mita wrote:
> Use memory_read_from_buffer() to simplify devcd_readv().

Reviewed-by: Johannes Berg <johannes@sipsolutions.net>

> Cc: Johannes Berg <johannes@sipsolutions.net>
> Cc: Keith Busch <keith.busch@intel.com>
> Cc: Jens Axboe <axboe@fb.com>
> Cc: Christoph Hellwig <hch@lst.de>
> Cc: Sagi Grimberg <sagi@grimberg.me>
> Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
> ---
>  drivers/base/devcoredump.c | 11 +----------
>  1 file changed, 1 insertion(+), 10 deletions(-)
> 
> diff --git a/drivers/base/devcoredump.c b/drivers/base/devcoredump.c
> index f1a3353..3c960a6 100644
> --- a/drivers/base/devcoredump.c
> +++ b/drivers/base/devcoredump.c
> @@ -164,16 +164,7 @@ static struct class devcd_class = {
>  static ssize_t devcd_readv(char *buffer, loff_t offset, size_t count,
>  			   void *data, size_t datalen)
>  {
> -	if (offset > datalen)
> -		return -EINVAL;
> -
> -	if (offset + count > datalen)
> -		count = datalen - offset;
> -
> -	if (count)
> -		memcpy(buffer, ((u8 *)data) + offset, count);
> -
> -	return count;
> +	return memory_read_from_buffer(buffer, count, &offset, data, datalen);
>  }
>  
>  static void devcd_freev(void *data)


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
